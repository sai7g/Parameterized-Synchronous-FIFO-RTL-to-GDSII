//==============================================================================
// tb_sync_fifo.v  -  Self-checking testbench for sync_fifo
//
//  - Cycle-accurate reference model (blocking-assignment behavioural model)
//  - Every cycle (on the falling clock edge) the DUT's full / empty /
//    almost_full / almost_empty / occupancy / rd_data are compared against
//    the model. rd_data is only compared when the FIFO is not empty.
//  - Directed tests + constrained-random stress + mid-operation reset
//  - Prints "*** TEST PASSED ***" or "*** TEST FAILED ***"
//
// Override parameters from the command line, e.g.
//   iverilog -Ptb_sync_fifo.DATA_WIDTH=16 -Ptb_sync_fifo.ADDR_WIDTH=5 ...
// (use ADDR_WIDTH >= 2)
//
// Verilog-2001 only, so it compiles with plain `iverilog` (-g2005).
//==============================================================================
`timescale 1ns/1ps

module tb_sync_fifo;

    //--------------------------------------------------------------------------
    // Parameters
    //--------------------------------------------------------------------------
    parameter DATA_WIDTH         = 8;
    parameter ADDR_WIDTH         = 4;
    parameter ALMOST_FULL_LEVEL  = (1 << ADDR_WIDTH) - 2;
    parameter ALMOST_EMPTY_LEVEL = 2;
    parameter RAND_CYCLES        = 20000;
    parameter SEED               = 32'h1BADB002;

    localparam DEPTH      = 1 << ADDR_WIDTH;
    localparam HALF       = DEPTH / 2;
    localparam CLK_PERIOD = 10;

    //--------------------------------------------------------------------------
    // DUT signals
    //--------------------------------------------------------------------------
    reg                   clk;
    reg                   rst_n;
    reg                   wr_en;
    reg  [DATA_WIDTH-1:0] wr_data;
    reg                   rd_en;
    wire [DATA_WIDTH-1:0] rd_data;
    wire                  full;
    wire                  empty;
    wire                  almost_full;
    wire                  almost_empty;
    wire [ADDR_WIDTH:0]   occupancy;

    sync_fifo #(
        .DATA_WIDTH         (DATA_WIDTH),
        .ADDR_WIDTH         (ADDR_WIDTH),
        .ALMOST_FULL_LEVEL  (ALMOST_FULL_LEVEL),
        .ALMOST_EMPTY_LEVEL (ALMOST_EMPTY_LEVEL)
    ) dut (
        .clk          (clk),
        .rst_n        (rst_n),
        .wr_en        (wr_en),
        .wr_data      (wr_data),
        .rd_en        (rd_en),
        .rd_data      (rd_data),
        .full         (full),
        .empty        (empty),
        .almost_full  (almost_full),
        .almost_empty (almost_empty),
        .occupancy    (occupancy)
    );

    //--------------------------------------------------------------------------
    // Clock
    //--------------------------------------------------------------------------
    initial clk = 1'b0;
    always #(CLK_PERIOD/2) clk = ~clk;

    //--------------------------------------------------------------------------
    // Reference model (updates on the same edge as the DUT)
    //--------------------------------------------------------------------------
    reg [DATA_WIDTH-1:0] m_mem [0:DEPTH-1];
    integer m_wp;
    integer m_rp;
    integer m_cnt;
    reg     m_do_wr;
    reg     m_do_rd;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            m_wp  = 0;
            m_rp  = 0;
            m_cnt = 0;
        end else begin
            m_do_wr = wr_en && (m_cnt != DEPTH);
            m_do_rd = rd_en && (m_cnt != 0);
            if (m_do_wr) begin
                m_mem[m_wp] = wr_data;
                m_wp = (m_wp + 1) % DEPTH;
            end
            if (m_do_rd)
                m_rp = (m_rp + 1) % DEPTH;
            m_cnt = m_cnt + (m_do_wr ? 1 : 0) - (m_do_rd ? 1 : 0);
        end
    end

    //--------------------------------------------------------------------------
    // Bookkeeping
    //--------------------------------------------------------------------------
    integer errors;
    integer checks;
    integer seed;
    integer seq;
    reg     chk_en;
    reg     saw_full, saw_empty, saw_af, saw_ae;

    task cmp;
        input [8*24-1:0] name;
        input [63:0]     got;
        input [63:0]     exp;
        begin
            checks = checks + 1;
            if (got !== exp) begin
                errors = errors + 1;
                $display("[%0t] ERROR %0s: got=%0h expected=%0h",
                         $time, name, got, exp);
            end
        end
    endtask

    // Continuous comparison against the model on every falling clock edge
    always @(negedge clk) begin
        if (chk_en) begin
            cmp("full",         full,         (m_cnt == DEPTH));
            cmp("empty",        empty,        (m_cnt == 0));
            cmp("almost_full",  almost_full,  (m_cnt >= ALMOST_FULL_LEVEL));
            cmp("almost_empty", almost_empty, (m_cnt <= ALMOST_EMPTY_LEVEL));
            cmp("occupancy",    occupancy,    m_cnt);
            if (m_cnt != 0)
                cmp("rd_data",  rd_data,      m_mem[m_rp]);

            if (full)         saw_full  = 1'b1;
            if (empty)        saw_empty = 1'b1;
            if (almost_full)  saw_af    = 1'b1;
            if (almost_empty) saw_ae    = 1'b1;
        end
    end

    //--------------------------------------------------------------------------
    // Stimulus helpers
    //--------------------------------------------------------------------------
    // Unique-looking data pattern per sequence number
    function [DATA_WIDTH-1:0] mkdata;
        input [31:0] n;
        begin
            mkdata = (n * 32'h9E3779B1) ^ 32'h5A5A5A5A;
        end
    endfunction

    // Apply one clock cycle of stimulus. Inputs change 1 ns after the rising
    // edge, so there are no races with the DUT or the model.
    task cycle;
        input                   w;
        input                   r;
        input [DATA_WIDTH-1:0]  d;
        begin
            wr_en   = w;
            rd_en   = r;
            wr_data = d;
            @(posedge clk);
            #1;
        end
    endtask

    // Directed check of the registered status (call 1 ns after a clock edge)
    task expect_state;
        input [8*24-1:0]  tag;
        input             exp_full;
        input             exp_empty;
        input [ADDR_WIDTH:0] exp_occ;
        begin
            cmp(tag, {full, empty, occupancy},
                     {exp_full, exp_empty, exp_occ});
        end
    endtask

    //--------------------------------------------------------------------------
    // Main test sequence
    //--------------------------------------------------------------------------
    integer i;
    integer sel;
    integer wp, rp;
    reg     rw, rr;

    initial begin
        errors    = 0;
        checks    = 0;
        seq       = 0;
        seed      = SEED;
        chk_en    = 1'b0;
        saw_full  = 1'b0;
        saw_empty = 1'b0;
        saw_af    = 1'b0;
        saw_ae    = 1'b0;

        rst_n   = 1'b0;
        wr_en   = 1'b0;
        rd_en   = 1'b0;
        wr_data = {DATA_WIDTH{1'b0}};

        $dumpfile("sync_fifo.vcd");
        $dumpvars(0, tb_sync_fifo);

        $display("Config: DATA_WIDTH=%0d ADDR_WIDTH=%0d DEPTH=%0d AF=%0d AE=%0d",
                 DATA_WIDTH, ADDR_WIDTH, DEPTH,
                 ALMOST_FULL_LEVEL, ALMOST_EMPTY_LEVEL);

        //----------------------------------------------------------------------
        // T1: reset state
        //----------------------------------------------------------------------
        $display("T1: reset state");
        repeat (3) @(posedge clk);
        #1;
        chk_en = 1'b1;
        expect_state("T1 in reset", 0, 1, 0);
        rst_n = 1'b1;
        cycle(0, 0, 0);
        expect_state("T1 after reset", 0, 1, 0);

        //----------------------------------------------------------------------
        // T2: fill to full
        //----------------------------------------------------------------------
        $display("T2: fill to full");
        for (i = 0; i < DEPTH; i = i + 1) begin
            cycle(1, 0, mkdata(seq));
            seq = seq + 1;
        end
        expect_state("T2 full", 1, 0, DEPTH);

        //----------------------------------------------------------------------
        // T3: write while full must be ignored
        //----------------------------------------------------------------------
        $display("T3: overflow attempts");
        for (i = 0; i < 3; i = i + 1) begin
            cycle(1, 0, mkdata(seq));
            seq = seq + 1;
        end
        expect_state("T3 still full", 1, 0, DEPTH);

        //----------------------------------------------------------------------
        // T4: drain completely (data order checked by the model every cycle),
        //     then read while empty must be ignored
        //----------------------------------------------------------------------
        $display("T4: drain + underflow attempts");
        for (i = 0; i < DEPTH; i = i + 1)
            cycle(0, 1, 0);
        expect_state("T4 empty", 0, 1, 0);
        for (i = 0; i < 3; i = i + 1)
            cycle(0, 1, 0);
        expect_state("T4 still empty", 0, 1, 0);

        //----------------------------------------------------------------------
        // T5: simultaneous read + write at mid level (pointers wrap 4x)
        //----------------------------------------------------------------------
        $display("T5: simultaneous read/write, pointer wrap-around");
        for (i = 0; i < HALF; i = i + 1) begin
            cycle(1, 0, mkdata(seq));
            seq = seq + 1;
        end
        for (i = 0; i < 4 * DEPTH; i = i + 1) begin
            cycle(1, 1, mkdata(seq));
            seq = seq + 1;
        end
        expect_state("T5 steady level", 0, 0, HALF);
        for (i = 0; i < HALF; i = i + 1)
            cycle(0, 1, 0);
        expect_state("T5 drained", 0, 1, 0);

        //----------------------------------------------------------------------
        // T6: simultaneous read + write corner cases (empty and full)
        //----------------------------------------------------------------------
        $display("T6: simultaneous read/write at empty and at full");
        cycle(1, 1, mkdata(seq));                 // empty: only write happens
        seq = seq + 1;
        expect_state("T6 rw at empty", 0, 0, 1);
        for (i = 0; i < DEPTH - 1; i = i + 1) begin
            cycle(1, 0, mkdata(seq));
            seq = seq + 1;
        end
        expect_state("T6 full", 1, 0, DEPTH);
        cycle(1, 1, mkdata(seq));                 // full: only read happens
        seq = seq + 1;
        expect_state("T6 rw at full", 0, 0, DEPTH - 1);
        for (i = 0; i < DEPTH - 1; i = i + 1)
            cycle(0, 1, 0);
        expect_state("T6 drained", 0, 1, 0);

        //----------------------------------------------------------------------
        // T7: constrained-random stress
        //----------------------------------------------------------------------
        $display("T7: random stress (%0d cycles)", RAND_CYCLES);
        wp = 50;
        rp = 50;
        for (i = 0; i < RAND_CYCLES; i = i + 1) begin
            if ((i % 400) == 0) begin
                sel = {$random(seed)} % 4;
                case (sel)
                    0: begin wp = 90;  rp = 20;  end   // fill-heavy
                    1: begin wp = 20;  rp = 90;  end   // drain-heavy
                    2: begin wp = 50;  rp = 50;  end   // balanced
                    default: begin wp = 100; rp = 100; end // back-to-back
                endcase
            end
            rw = (({$random(seed)} % 100) < wp);
            rr = (({$random(seed)} % 100) < rp);
            cycle(rw, rr, mkdata(seq));
            seq = seq + 1;
        end

        //----------------------------------------------------------------------
        // T8: reset in the middle of operation
        //----------------------------------------------------------------------
        $display("T8: mid-operation reset");
        for (i = 0; i < 5; i = i + 1) begin
            cycle(1, 0, mkdata(seq));
            seq = seq + 1;
        end
        rst_n = 1'b0;
        cycle(1, 1, mkdata(seq));                 // requests during reset
        seq = seq + 1;
        expect_state("T8 in reset", 0, 1, 0);
        rst_n = 1'b1;
        cycle(0, 0, 0);
        expect_state("T8 after reset", 0, 1, 0);
        for (i = 0; i < DEPTH; i = i + 1) begin
            cycle(1, 0, mkdata(seq));
            seq = seq + 1;
        end
        expect_state("T8 refilled", 1, 0, DEPTH);
        for (i = 0; i < DEPTH; i = i + 1)
            cycle(0, 1, 0);
        expect_state("T8 redrained", 0, 1, 0);
        cycle(0, 0, 0);
        cycle(0, 0, 0);

        //----------------------------------------------------------------------
        // Summary
        //----------------------------------------------------------------------
        $display("Coverage: full=%0b empty=%0b almost_full=%0b almost_empty=%0b",
                 saw_full, saw_empty, saw_af, saw_ae);
        $display("Checks performed: %0d, errors: %0d", checks, errors);
        if (errors == 0 && saw_full && saw_empty && saw_af && saw_ae)
            $display("*** TEST PASSED ***");
        else
            $display("*** TEST FAILED ***");
        $finish;
    end

    //--------------------------------------------------------------------------
    // Watchdog
    //--------------------------------------------------------------------------
    initial begin
        #(CLK_PERIOD * (RAND_CYCLES + 50 * DEPTH + 2000));
        $display("*** TEST FAILED: TIMEOUT ***");
        $finish;
    end

endmodule
