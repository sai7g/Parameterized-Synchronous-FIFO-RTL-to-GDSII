//==============================================================================
// sync_fifo.v  -  Parameterised synchronous FIFO (single clock)
//
// Features
//  - DATA_WIDTH-bit data, depth = 2**ADDR_WIDTH
//  - Flags: full, empty, almost_full, almost_empty
//  - occupancy : number of words currently stored (0 .. DEPTH)
//  - First-word-fall-through read: when empty == 0, rd_data already shows the
//    oldest word. Asserting rd_en for one clock pops it (no read latency).
//  - Write when full / read when empty are ignored (no corruption).
//  - Asynchronous active-low reset.
//
// Port summary
//  clk           : clock, all logic on rising edge
//  rst_n         : asynchronous active-low reset
//  wr_en         : push wr_data on this clock edge (ignored if full)
//  wr_data       : data to write
//  rd_en         : pop on this clock edge          (ignored if empty)
//  rd_data       : head-of-FIFO data, valid whenever empty == 0
//  full / empty  : registered status flags
//  almost_full   : occupancy >= ALMOST_FULL_LEVEL
//  almost_empty  : occupancy <= ALMOST_EMPTY_LEVEL
//  occupancy     : registered fill level
//
// Hierarchy
//  sync_fifo
//   |-- fifo_ctrl  (pointers, counter, flags)
//   `-- fifo_mem   (storage array)
//==============================================================================
`timescale 1ns/1ps
`default_nettype none

module sync_fifo #(
    parameter DATA_WIDTH         = 8,
    parameter ADDR_WIDTH         = 4,                         // depth = 16
    parameter ALMOST_FULL_LEVEL  = (1 << ADDR_WIDTH) - 2,
    parameter ALMOST_EMPTY_LEVEL = 2
)(
    input  wire                  clk,
    input  wire                  rst_n,

    // write port
    input  wire                  wr_en,
    input  wire [DATA_WIDTH-1:0] wr_data,

    // read port
    input  wire                  rd_en,
    output wire [DATA_WIDTH-1:0] rd_data,

    // status
    output wire                  full,
    output wire                  empty,
    output wire                  almost_full,
    output wire                  almost_empty,
    output wire [ADDR_WIDTH:0]   occupancy
);

    wire [ADDR_WIDTH-1:0] wr_addr;
    wire [ADDR_WIDTH-1:0] rd_addr;
    wire                  mem_wr_en;

    fifo_ctrl #(
        .ADDR_WIDTH         (ADDR_WIDTH),
        .ALMOST_FULL_LEVEL  (ALMOST_FULL_LEVEL),
        .ALMOST_EMPTY_LEVEL (ALMOST_EMPTY_LEVEL)
    ) u_ctrl (
        .clk          (clk),
        .rst_n        (rst_n),
        .wr_req       (wr_en),
        .rd_req       (rd_en),
        .mem_wr_en    (mem_wr_en),
        .wr_addr      (wr_addr),
        .rd_addr      (rd_addr),
        .full         (full),
        .empty        (empty),
        .almost_full  (almost_full),
        .almost_empty (almost_empty),
        .occupancy    (occupancy)
    );

    fifo_mem #(
        .DATA_WIDTH (DATA_WIDTH),
        .ADDR_WIDTH (ADDR_WIDTH)
    ) u_mem (
        .clk     (clk),
        .wr_en   (mem_wr_en),
        .wr_addr (wr_addr),
        .wr_data (wr_data),
        .rd_addr (rd_addr),
        .rd_data (rd_data)
    );

endmodule

`default_nettype wire
