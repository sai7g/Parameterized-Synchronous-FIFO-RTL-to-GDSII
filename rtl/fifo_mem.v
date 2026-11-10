//==============================================================================
// fifo_mem.v
// Storage array for the synchronous FIFO.
//
//  - 1 synchronous write port, 1 asynchronous (combinational) read port
//  - Synthesises to a flip-flop array + read mux (no SRAM macro needed)
//  - No reset on the array (saves area; contents are qualified by the
//    FIFO empty flag so stale data is never consumed)
//  - To move to an SRAM macro later, replace only this module.
//
// Verilog-2001, synthesisable, Icarus Verilog / Yosys / OpenLane friendly.
//==============================================================================
`timescale 1ns/1ps
`default_nettype none

module fifo_mem #(
    parameter DATA_WIDTH = 8,
    parameter ADDR_WIDTH = 4
)(
    input  wire                  clk,
    input  wire                  wr_en,
    input  wire [ADDR_WIDTH-1:0] wr_addr,
    input  wire [DATA_WIDTH-1:0] wr_data,
    input  wire [ADDR_WIDTH-1:0] rd_addr,
    output wire [DATA_WIDTH-1:0] rd_data
);

    localparam DEPTH = 1 << ADDR_WIDTH;

    reg [DATA_WIDTH-1:0] mem [0:DEPTH-1];

    // Synchronous write
    always @(posedge clk) begin
        if (wr_en)
            mem[wr_addr] <= wr_data;
    end

    // Asynchronous read
    assign rd_data = mem[rd_addr];

endmodule

`default_nettype wire
