/* Generated by Yosys 0.36+42 (git sha1 70d35314d, clang 11.0.1-2 -fPIC -Os) */

module control_0(reset, clk, sel, bask_0, bfsk_1, bpsk_2, mod_out);

  wire _0_;
  wire _1_;
  wire _2_;
  wire [6:0] _3_;
  wire [6:0] _4_;
  wire [6:0] _5_;
  reg [6:0] _6_;
  input [6:0] bask_0;
  wire [6:0] bask_0;
  input [6:0] bfsk_1;
  wire [6:0] bfsk_1;
  input [6:0] bpsk_2;
  wire [6:0] bpsk_2;
  input clk;
  wire clk;
  output [6:0] mod_out;
  wire [6:0] mod_out;
  input reset;
  wire reset;
  input [1:0] sel;
  wire [1:0] sel;
  assign _3_ = _2_ ? bpsk_2 : 7'h00;
  assign _4_ = _1_ ? bfsk_1 : _3_;
  assign _5_ = _0_ ? bask_0 : _4_;

  always @(posedge clk, posedge reset)
    if (reset) _6_ <= 7'h00;
    else _6_ <= _5_;
  assign _0_ = sel == 2'h1;
  assign _1_ = sel == 2'h2;
  assign _2_ = sel == 2'h3;
  assign mod_out = _6_;
endmodule
