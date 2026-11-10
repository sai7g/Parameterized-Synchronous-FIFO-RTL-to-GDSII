//==============================================================================
// fifo_ctrl.v
// Pointer / occupancy / flag controller for the synchronous FIFO.
//
//  - Write and read pointers are ADDR_WIDTH bits and wrap naturally
//    (depth is therefore always a power of two: 2**ADDR_WIDTH).
//  - An (ADDR_WIDTH+1)-bit occupancy counter tracks the fill level (0..DEPTH).
//  - ALL flags (full, empty, almost_full, almost_empty) and the occupancy
//    count are REGISTERED: every output comes straight from a flip-flop,
//    which gives clean output timing and glitch-free flags.
//  - Requests that would overflow / underflow are silently ignored.
//  - Simultaneous read + write:
//        normal          -> both happen, occupancy unchanged
//        full            -> only the read happens   (write is blocked)
//        empty           -> only the write happens  (read  is blocked)
//  - Asynchronous active-low reset (rst_n).
//
// Parameters
//  ADDR_WIDTH          : log2(depth), must be >= 1
//  ALMOST_FULL_LEVEL   : almost_full  = 1 when occupancy >= this value
//  ALMOST_EMPTY_LEVEL  : almost_empty = 1 when occupancy <= this value
//                        (both levels must be in the range 0 .. DEPTH)
//==============================================================================
`timescale 1ns/1ps
`default_nettype none

module fifo_ctrl #(
    parameter ADDR_WIDTH         = 4,
    parameter ALMOST_FULL_LEVEL  = (1 << ADDR_WIDTH) - 2,
    parameter ALMOST_EMPTY_LEVEL = 2
)(
    input  wire                  clk,
    input  wire                  rst_n,

    // requests from the user
    input  wire                  wr_req,
    input  wire                  rd_req,

    // to the memory
    output wire                  mem_wr_en,   // accepted write
    output wire [ADDR_WIDTH-1:0] wr_addr,
    output wire [ADDR_WIDTH-1:0] rd_addr,

    // status flags
    output wire                  full,
    output wire                  empty,
    output wire                  almost_full,
    output wire                  almost_empty,
    output wire [ADDR_WIDTH:0]   occupancy
);

    localparam [ADDR_WIDTH:0] DEPTH = 1 << ADDR_WIDTH;

    //--------------------------------------------------------------------------
    // State
    //--------------------------------------------------------------------------
    reg [ADDR_WIDTH-1:0] wr_ptr;
    reg [ADDR_WIDTH-1:0] rd_ptr;
    reg [ADDR_WIDTH:0]   count;

    reg                  full_r;
    reg                  empty_r;
    reg                  almost_full_r;
    reg                  almost_empty_r;

    //--------------------------------------------------------------------------
    // Accepted operations (gated by the registered flags)
    //--------------------------------------------------------------------------
    wire do_wr = wr_req & ~full_r;
    wire do_rd = rd_req & ~empty_r;

    //--------------------------------------------------------------------------
    // Next occupancy
    //--------------------------------------------------------------------------
    reg [ADDR_WIDTH:0] count_nxt;

    always @(*) begin
        case ({do_wr, do_rd})
            2'b10:   count_nxt = count + 1'b1;
            2'b01:   count_nxt = count - 1'b1;
            default: count_nxt = count;
        endcase
    end

    //--------------------------------------------------------------------------
    // Sequential logic
    //--------------------------------------------------------------------------
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            wr_ptr         <= {ADDR_WIDTH{1'b0}};
            rd_ptr         <= {ADDR_WIDTH{1'b0}};
            count          <= {(ADDR_WIDTH+1){1'b0}};
            full_r         <= 1'b0;
            empty_r        <= 1'b1;
            almost_full_r  <= (ALMOST_FULL_LEVEL  <= 0);
            almost_empty_r <= (ALMOST_EMPTY_LEVEL >= 0);
        end else begin
            if (do_wr) wr_ptr <= wr_ptr + 1'b1;
            if (do_rd) rd_ptr <= rd_ptr + 1'b1;

            count          <= count_nxt;
            full_r         <= (count_nxt == DEPTH);
            empty_r        <= (count_nxt == {(ADDR_WIDTH+1){1'b0}});
            almost_full_r  <= (count_nxt >= ALMOST_FULL_LEVEL);
            almost_empty_r <= (count_nxt <= ALMOST_EMPTY_LEVEL);
        end
    end

    //--------------------------------------------------------------------------
    // Outputs
    //--------------------------------------------------------------------------
    assign mem_wr_en    = do_wr;
    assign wr_addr      = wr_ptr;
    assign rd_addr      = rd_ptr;

    assign full         = full_r;
    assign empty        = empty_r;
    assign almost_full  = almost_full_r;
    assign almost_empty = almost_empty_r;
    assign occupancy    = count;

endmodule

`default_nettype wire
