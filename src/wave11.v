/* Generated by Yosys 0.36+42 (git sha1 70d35314d, clang 11.0.1-2 -fPIC -Os) */

module wave11(reset, clk, dataout);

  wire [4:0] _0_;
  wire [31:0] _1_;
  wire _2_;
  wire [4:0] _3_;
  reg [4:0] _4_;
  reg [7:0] _5_;
  wire [239:0] _6_;
  wire [7:0] _7_;
  input clk;
  wire clk;
  wire [7:0] conv;
  wire [6:0] conv2;
  output [6:0] dataout;
  wire [6:0] dataout;
  wire [4:0] i;
  input reset;
  wire reset;
  wire [239:0] sine;
  reg [7:0] \31  [29:0];

  initial begin
    \31 [0] = 8'h19;
    \31 [1] = 8'h13;
    \31 [2] = 8'h0d;
    \31 [3] = 8'h08;
    \31 [4] = 8'h04;
    \31 [5] = 8'h02;
    \31 [6] = 8'h00;
    \31 [7] = 8'h00;
    \31 [8] = 8'h02;
    \31 [9] = 8'h04;
    \31 [10] = 8'h08;
    \31 [11] = 8'h0d;
    \31 [12] = 8'h13;
    \31 [13] = 8'h19;
    \31 [14] = 8'h20;
    \31 [15] = 8'h26;
    \31 [16] = 8'h2c;
    \31 [17] = 8'h32;
    \31 [18] = 8'h37;
    \31 [19] = 8'h3b;
    \31 [20] = 8'h3d;
    \31 [21] = 8'h3f;
    \31 [22] = 8'h3f;
    \31 [23] = 8'h3d;
    \31 [24] = 8'h3b;
    \31 [25] = 8'h37;
    \31 [26] = 8'h32;
    \31 [27] = 8'h2c;
    \31 [28] = 8'h26;
    \31 [29] = 8'h20;
  end
  assign _7_ = \31 [_0_];
  assign _1_ = { 27'h0000000, i } + 32'd1;
  assign _2_ = { 27'h0000000, i } == 32'd29;
  assign _3_ = _2_ ? 5'h00 : _1_[4:0];
  always @(posedge clk, posedge reset)
    if (reset) _4_ <= 5'h00;
    else _4_ <= _3_;
  always @(posedge clk, posedge reset)
    if (reset) _5_ <= 8'h00;
    else _5_ <= _7_;
  assign _0_ = 5'h1d - i;
  assign i = _4_;
  assign conv = _5_;
  assign conv2 = conv[6:0];
  assign sine = 240'h20262c32373b3d3f3f3d3b37322c262019130d08040200000204080d1319;
  assign dataout = conv2;
endmodule
