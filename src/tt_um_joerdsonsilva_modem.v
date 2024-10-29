/*
 * Copyright (c) 2024 Your Name
 * SPDX-License-Identifier: Apache-2.0
 */

`default_nettype none

module tt_um_joerdsonsilva_modem (
    input  wire [7:0] ui_in,    // Dedicated inputs
    output wire [7:0] uo_out,   // Dedicated outputs
    input  wire [7:0] uio_in,   // IOs: Input path
    output wire [7:0] uio_out,  // IOs: Output path
    output wire [7:0] uio_oe,   // IOs: Enable path (active high: 0=input, 1=output)
    input  wire       ena,      // always 1 when the design is powered, so you can ignore it
    input  wire       clk,      // clock
    input  wire       rst_n     // reset_n - low to reset
);

    wire reset;
    wire [1:0] sel;
    wire [6:0] mod_out;
    wire [7:7] demod_out;

  // All output pins must be assigned. If not used, assign to 0.
    assign uio_out = 8'b0;
    assign uio_oe = 8'b0;
    
    assign reset = !rst_n;
    assign sel = ui_in[1:0];
    assign uo_out[6:0] = mod_out;
    assign uo_out[7:7] = demod_out;

  // List all unused inputs to prevent warnings
    wire _unused = &{ena, uio_in[7:0], ui_in[7:2], 1'b0};

    modem modem (
    .reset (reset),
    .clk (clk),
    .sel (sel),
    .mod_out (mod_out),
    .demod_out (demod_out)
    );

endmodule