//-----------------------------------------------------------------
// System Generator version 2015.2 Verilog source file.
//
// Copyright(C) 2013 by Xilinx, Inc.  All rights reserved.  This
// text/file contains proprietary, confidential information of Xilinx,
// Inc., is distributed under license from Xilinx, Inc., and may be used,
// copied and/or disclosed only pursuant to the terms of a valid license
// agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
// this text/file solely for design, simulation, implementation and
// creation of design files limited to Xilinx devices or technologies.
// Use with non-Xilinx devices or technologies is expressly prohibited
// and immediately terminates your license unless covered by a separate
// agreement.
//
// Xilinx is providing this design, code, or information "as is" solely
// for use in developing programs and solutions for Xilinx devices.  By
// providing this design, code, or information as one possible
// implementation of this feature, application or standard, Xilinx is
// making no representation that this implementation is free from any
// claims of infringement.  You are responsible for obtaining any rights
// you may require for your implementation.  Xilinx expressly disclaims
// any warranty whatsoever with respect to the adequacy of the
// implementation, including but not limited to warranties of
// merchantability or fitness for a particular purpose.
//
// Xilinx products are not intended for use in life support appliances,
// devices, or systems.  Use in such applications is expressly prohibited.
//
// Any modifications that are made to the source code are done at the user's
// sole risk and will be unsupported.
//
// This copyright and support notice must be retained as part of this
// text at all times.  (c) Copyright 1995-2013 Xilinx, Inc.  All rights
// reserved.
//-----------------------------------------------------------------

`include "conv_pkg.v"
`timescale 1 ns / 10 ps
module sysgen_constant_828adcadae (
  output [(8 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 8'b00000001;
endmodule
`timescale 1 ns / 10 ps
module sysgen_inverter_dea83a2b38 (
  input [(1 - 1):0] ip,
  output [(1 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire ip_1_26;
  reg op_mem_22_20[0:(1 - 1)];
  initial
    begin
      op_mem_22_20[0] = 1'b0;
    end
  wire op_mem_22_20_front_din;
  wire op_mem_22_20_back;
  wire op_mem_22_20_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value = 1'b1;
  wire internal_ip_12_1_bitnot;
  assign ip_1_26 = ip;
  assign op_mem_22_20_back = op_mem_22_20[0];
  always @(posedge clk)
    begin:proc_op_mem_22_20
      integer i;
      if (((ce == 1'b1) && (op_mem_22_20_push_front_pop_back_en == 1'b1)))
        begin
          op_mem_22_20[0] <= op_mem_22_20_front_din;
        end
    end
  assign internal_ip_12_1_bitnot = ~ip_1_26;
  assign op_mem_22_20_push_front_pop_back_en = 1'b0;
  assign op = internal_ip_12_1_bitnot;
endmodule
`timescale 1 ns / 10 ps
module sysgen_logical_8b7810a2aa (
  input [(1 - 1):0] d0,
  input [(1 - 1):0] d1,
  output [(1 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire d0_1_24;
  wire d1_1_27;
  wire fully_2_1_bit;
  assign d0_1_24 = d0;
  assign d1_1_27 = d1;
  assign fully_2_1_bit = d0_1_24 | d1_1_27;
  assign y = fully_2_1_bit;
endmodule
`timescale 1 ns / 10 ps
module sysgen_logical_f9d74a72d1 (
  input [(1 - 1):0] d0,
  input [(1 - 1):0] d1,
  output [(1 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire d0_1_24;
  wire d1_1_27;
  wire fully_2_1_bit;
  assign d0_1_24 = d0;
  assign d1_1_27 = d1;
  assign fully_2_1_bit = d0_1_24 & d1_1_27;
  assign y = fully_2_1_bit;
endmodule
`timescale 1 ns / 10 ps
module sysgen_reinterpret_ad93f43143 (
  input [(16 - 1):0] input_port,
  output [(16 - 1):0] output_port,
  input clk,
  input ce,
  input clr);
  wire [(16 - 1):0] input_port_1_40;
  wire signed [(16 - 1):0] output_port_5_5_force;
  assign input_port_1_40 = input_port;
  assign output_port_5_5_force = input_port_1_40;
  assign output_port = output_port_5_5_force;
endmodule
`timescale 1 ns / 10 ps

module  channelizer_xlslice  (x, y);

//Parameter Definitions
parameter new_msb= 9;
parameter new_lsb= 1;
parameter x_width= 16;
parameter y_width= 8;

//Port Declartions
input [x_width-1:0] x;
output [y_width-1:0] y;

assign y = x[new_msb:new_lsb];

endmodule
`timescale 1 ns / 10 ps
module sysgen_constant_fa8d4b3e6d (
  output [(1 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 1'b1;
endmodule
`timescale 1 ns / 10 ps
module sysgen_concat_c4ee67c59a (
  input [(16 - 1):0] in0,
  input [(16 - 1):0] in1,
  output [(32 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire [(16 - 1):0] in0_1_23;
  wire [(16 - 1):0] in1_1_27;
  wire [(32 - 1):0] y_2_1_concat;
  assign in0_1_23 = in0;
  assign in1_1_27 = in1;
  assign y_2_1_concat = {in0_1_23, in1_1_27};
  assign y = y_2_1_concat;
endmodule
`timescale 1 ns / 10 ps


module channelizer_xlconvert (din, clk, ce, clr, en, dout);

//Parameter Definitions
   parameter din_width= 16;
   parameter din_bin_pt= 4;
   parameter din_arith= `xlUnsigned;
   parameter dout_width= 8;
   parameter dout_bin_pt= 2;
   parameter dout_arith= `xlUnsigned;
   parameter en_width = 1;
   parameter en_bin_pt = 0;
   parameter en_arith = `xlUnsigned;
   parameter bool_conversion = 0;
   parameter latency = 0;
   parameter quantization= `xlTruncate;
   parameter overflow= `xlWrap;

//Port Declartions
   input [din_width-1:0] din;
   input clk, ce, clr;
   input [en_width-1:0] en;
   output [dout_width-1:0] dout;

//Wire Declartions
   wire [dout_width-1:0]   result;
   wire internal_ce;
   assign internal_ce = ce & en[0];

generate
 if (bool_conversion == 1)
    begin:bool_converion_generate
       assign result = din;
    end
 else
    begin:std_conversion
       convert_type #(din_width,
                      din_bin_pt,
                      din_arith,
		              dout_width,
                      dout_bin_pt,
                      dout_arith,
                      quantization,
                      overflow)
        conv_udp (.inp(din), .res(result));
    end
endgenerate

generate
if (latency > 0)
     begin:latency_test
	synth_reg # (dout_width, latency)
	  reg1 (
	       .i(result),
	       .ce(internal_ce),
	       .clr(clr),
	       .clk(clk),
	       .o(dout));
     end
else
     begin:latency0
	assign dout = result;
     end
endgenerate

endmodule

`timescale 1 ns / 10 ps
module sysgen_reinterpret_af1a0b71e1 (
  input [(16 - 1):0] input_port,
  output [(16 - 1):0] output_port,
  input clk,
  input ce,
  input clr);
  wire signed [(16 - 1):0] input_port_1_40;
  wire [(16 - 1):0] output_port_5_5_force;
  assign input_port_1_40 = input_port;
  assign output_port_5_5_force = input_port_1_40;
  assign output_port = output_port_5_5_force;
endmodule
`timescale 1 ns / 10 ps
module sysgen_constant_ff57ff80b6 (
  output [(32 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 32'b00000000000000000000000000000000;
endmodule
`timescale 1 ns / 10 ps
module sysgen_constant_9b3be16c34 (
  output [(1 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 1'b0;
endmodule
`timescale 1 ns / 10 ps
module sysgen_delay_2640a39ee9 (
  input [(1 - 1):0] d,
  input [(1 - 1):0] en,
  input [(1 - 1):0] rst,
  output [(1 - 1):0] q,
  input clk,
  input ce,
  input clr);
  wire d_1_22;
  wire en_1_25;
  wire rst_1_29;
  wire op_mem_0_8_24_next;
  reg op_mem_0_8_24 = 1'b0;
  wire op_mem_0_8_24_rst;
  wire op_mem_0_8_24_en;
  wire op_mem_1_8_24_next;
  reg op_mem_1_8_24 = 1'b0;
  wire op_mem_1_8_24_rst;
  wire op_mem_1_8_24_en;
  wire op_mem_2_8_24_next;
  reg op_mem_2_8_24 = 1'b0;
  wire op_mem_2_8_24_rst;
  wire op_mem_2_8_24_en;
  wire op_mem_3_8_24_next;
  reg op_mem_3_8_24 = 1'b0;
  wire op_mem_3_8_24_rst;
  wire op_mem_3_8_24_en;
  wire op_mem_4_8_24_next;
  reg op_mem_4_8_24 = 1'b0;
  wire op_mem_4_8_24_rst;
  wire op_mem_4_8_24_en;
  wire op_mem_5_8_24_next;
  reg op_mem_5_8_24 = 1'b0;
  wire op_mem_5_8_24_rst;
  wire op_mem_5_8_24_en;
  wire op_mem_6_8_24_next;
  reg op_mem_6_8_24 = 1'b0;
  wire op_mem_6_8_24_rst;
  wire op_mem_6_8_24_en;
  wire op_mem_7_8_24_next;
  reg op_mem_7_8_24 = 1'b0;
  wire op_mem_7_8_24_rst;
  wire op_mem_7_8_24_en;
  wire op_mem_8_8_24_next;
  reg op_mem_8_8_24 = 1'b0;
  wire op_mem_8_8_24_rst;
  wire op_mem_8_8_24_en;
  wire op_mem_9_8_24_next;
  reg op_mem_9_8_24 = 1'b0;
  wire op_mem_9_8_24_rst;
  wire op_mem_9_8_24_en;
  wire op_mem_10_8_24_next;
  reg op_mem_10_8_24 = 1'b0;
  wire op_mem_10_8_24_rst;
  wire op_mem_10_8_24_en;
  wire op_mem_11_8_24_next;
  reg op_mem_11_8_24 = 1'b0;
  wire op_mem_11_8_24_rst;
  wire op_mem_11_8_24_en;
  wire op_mem_12_8_24_next;
  reg op_mem_12_8_24 = 1'b0;
  wire op_mem_12_8_24_rst;
  wire op_mem_12_8_24_en;
  wire op_mem_13_8_24_next;
  reg op_mem_13_8_24 = 1'b0;
  wire op_mem_13_8_24_rst;
  wire op_mem_13_8_24_en;
  wire op_mem_14_8_24_next;
  reg op_mem_14_8_24 = 1'b0;
  wire op_mem_14_8_24_rst;
  wire op_mem_14_8_24_en;
  wire op_mem_15_8_24_next;
  reg op_mem_15_8_24 = 1'b0;
  wire op_mem_15_8_24_rst;
  wire op_mem_15_8_24_en;
  wire op_mem_16_8_24_next;
  reg op_mem_16_8_24 = 1'b0;
  wire op_mem_16_8_24_rst;
  wire op_mem_16_8_24_en;
  localparam [(5 - 1):0] const_value = 5'b10001;
  reg op_mem_0_join_10_5;
  reg op_mem_0_join_10_5_en;
  reg op_mem_0_join_10_5_rst;
  reg op_mem_2_join_10_5;
  reg op_mem_2_join_10_5_en;
  reg op_mem_2_join_10_5_rst;
  reg op_mem_5_join_10_5;
  reg op_mem_5_join_10_5_en;
  reg op_mem_5_join_10_5_rst;
  reg op_mem_13_join_10_5;
  reg op_mem_13_join_10_5_en;
  reg op_mem_13_join_10_5_rst;
  reg op_mem_4_join_10_5;
  reg op_mem_4_join_10_5_en;
  reg op_mem_4_join_10_5_rst;
  reg op_mem_7_join_10_5;
  reg op_mem_7_join_10_5_en;
  reg op_mem_7_join_10_5_rst;
  reg op_mem_15_join_10_5;
  reg op_mem_15_join_10_5_en;
  reg op_mem_15_join_10_5_rst;
  reg op_mem_6_join_10_5;
  reg op_mem_6_join_10_5_en;
  reg op_mem_6_join_10_5_rst;
  reg op_mem_12_join_10_5;
  reg op_mem_12_join_10_5_en;
  reg op_mem_12_join_10_5_rst;
  reg op_mem_3_join_10_5;
  reg op_mem_3_join_10_5_en;
  reg op_mem_3_join_10_5_rst;
  reg op_mem_16_join_10_5;
  reg op_mem_16_join_10_5_en;
  reg op_mem_16_join_10_5_rst;
  reg op_mem_10_join_10_5;
  reg op_mem_10_join_10_5_en;
  reg op_mem_10_join_10_5_rst;
  reg op_mem_1_join_10_5;
  reg op_mem_1_join_10_5_en;
  reg op_mem_1_join_10_5_rst;
  reg op_mem_8_join_10_5;
  reg op_mem_8_join_10_5_en;
  reg op_mem_8_join_10_5_rst;
  reg op_mem_14_join_10_5;
  reg op_mem_14_join_10_5_en;
  reg op_mem_14_join_10_5_rst;
  reg op_mem_9_join_10_5;
  reg op_mem_9_join_10_5_en;
  reg op_mem_9_join_10_5_rst;
  reg op_mem_11_join_10_5;
  reg op_mem_11_join_10_5_en;
  reg op_mem_11_join_10_5_rst;
  assign d_1_22 = d;
  assign en_1_25 = en;
  assign rst_1_29 = rst;
  always @(posedge clk)
    begin:proc_op_mem_0_8_24
      if (((ce == 1'b1) && (op_mem_0_8_24_rst == 1'b1)))
        begin
          op_mem_0_8_24 <= 1'b0;
        end
      else if (((ce == 1'b1) && (op_mem_0_8_24_en == 1'b1)))
        begin
          op_mem_0_8_24 <= op_mem_0_8_24_next;
        end
    end
  always @(posedge clk)
    begin:proc_op_mem_1_8_24
      if (((ce == 1'b1) && (op_mem_1_8_24_rst == 1'b1)))
        begin
          op_mem_1_8_24 <= 1'b0;
        end
      else if (((ce == 1'b1) && (op_mem_1_8_24_en == 1'b1)))
        begin
          op_mem_1_8_24 <= op_mem_1_8_24_next;
        end
    end
  always @(posedge clk)
    begin:proc_op_mem_2_8_24
      if (((ce == 1'b1) && (op_mem_2_8_24_rst == 1'b1)))
        begin
          op_mem_2_8_24 <= 1'b0;
        end
      else if (((ce == 1'b1) && (op_mem_2_8_24_en == 1'b1)))
        begin
          op_mem_2_8_24 <= op_mem_2_8_24_next;
        end
    end
  always @(posedge clk)
    begin:proc_op_mem_3_8_24
      if (((ce == 1'b1) && (op_mem_3_8_24_rst == 1'b1)))
        begin
          op_mem_3_8_24 <= 1'b0;
        end
      else if (((ce == 1'b1) && (op_mem_3_8_24_en == 1'b1)))
        begin
          op_mem_3_8_24 <= op_mem_3_8_24_next;
        end
    end
  always @(posedge clk)
    begin:proc_op_mem_4_8_24
      if (((ce == 1'b1) && (op_mem_4_8_24_rst == 1'b1)))
        begin
          op_mem_4_8_24 <= 1'b0;
        end
      else if (((ce == 1'b1) && (op_mem_4_8_24_en == 1'b1)))
        begin
          op_mem_4_8_24 <= op_mem_4_8_24_next;
        end
    end
  always @(posedge clk)
    begin:proc_op_mem_5_8_24
      if (((ce == 1'b1) && (op_mem_5_8_24_rst == 1'b1)))
        begin
          op_mem_5_8_24 <= 1'b0;
        end
      else if (((ce == 1'b1) && (op_mem_5_8_24_en == 1'b1)))
        begin
          op_mem_5_8_24 <= op_mem_5_8_24_next;
        end
    end
  always @(posedge clk)
    begin:proc_op_mem_6_8_24
      if (((ce == 1'b1) && (op_mem_6_8_24_rst == 1'b1)))
        begin
          op_mem_6_8_24 <= 1'b0;
        end
      else if (((ce == 1'b1) && (op_mem_6_8_24_en == 1'b1)))
        begin
          op_mem_6_8_24 <= op_mem_6_8_24_next;
        end
    end
  always @(posedge clk)
    begin:proc_op_mem_7_8_24
      if (((ce == 1'b1) && (op_mem_7_8_24_rst == 1'b1)))
        begin
          op_mem_7_8_24 <= 1'b0;
        end
      else if (((ce == 1'b1) && (op_mem_7_8_24_en == 1'b1)))
        begin
          op_mem_7_8_24 <= op_mem_7_8_24_next;
        end
    end
  always @(posedge clk)
    begin:proc_op_mem_8_8_24
      if (((ce == 1'b1) && (op_mem_8_8_24_rst == 1'b1)))
        begin
          op_mem_8_8_24 <= 1'b0;
        end
      else if (((ce == 1'b1) && (op_mem_8_8_24_en == 1'b1)))
        begin
          op_mem_8_8_24 <= op_mem_8_8_24_next;
        end
    end
  always @(posedge clk)
    begin:proc_op_mem_9_8_24
      if (((ce == 1'b1) && (op_mem_9_8_24_rst == 1'b1)))
        begin
          op_mem_9_8_24 <= 1'b0;
        end
      else if (((ce == 1'b1) && (op_mem_9_8_24_en == 1'b1)))
        begin
          op_mem_9_8_24 <= op_mem_9_8_24_next;
        end
    end
  always @(posedge clk)
    begin:proc_op_mem_10_8_24
      if (((ce == 1'b1) && (op_mem_10_8_24_rst == 1'b1)))
        begin
          op_mem_10_8_24 <= 1'b0;
        end
      else if (((ce == 1'b1) && (op_mem_10_8_24_en == 1'b1)))
        begin
          op_mem_10_8_24 <= op_mem_10_8_24_next;
        end
    end
  always @(posedge clk)
    begin:proc_op_mem_11_8_24
      if (((ce == 1'b1) && (op_mem_11_8_24_rst == 1'b1)))
        begin
          op_mem_11_8_24 <= 1'b0;
        end
      else if (((ce == 1'b1) && (op_mem_11_8_24_en == 1'b1)))
        begin
          op_mem_11_8_24 <= op_mem_11_8_24_next;
        end
    end
  always @(posedge clk)
    begin:proc_op_mem_12_8_24
      if (((ce == 1'b1) && (op_mem_12_8_24_rst == 1'b1)))
        begin
          op_mem_12_8_24 <= 1'b0;
        end
      else if (((ce == 1'b1) && (op_mem_12_8_24_en == 1'b1)))
        begin
          op_mem_12_8_24 <= op_mem_12_8_24_next;
        end
    end
  always @(posedge clk)
    begin:proc_op_mem_13_8_24
      if (((ce == 1'b1) && (op_mem_13_8_24_rst == 1'b1)))
        begin
          op_mem_13_8_24 <= 1'b0;
        end
      else if (((ce == 1'b1) && (op_mem_13_8_24_en == 1'b1)))
        begin
          op_mem_13_8_24 <= op_mem_13_8_24_next;
        end
    end
  always @(posedge clk)
    begin:proc_op_mem_14_8_24
      if (((ce == 1'b1) && (op_mem_14_8_24_rst == 1'b1)))
        begin
          op_mem_14_8_24 <= 1'b0;
        end
      else if (((ce == 1'b1) && (op_mem_14_8_24_en == 1'b1)))
        begin
          op_mem_14_8_24 <= op_mem_14_8_24_next;
        end
    end
  always @(posedge clk)
    begin:proc_op_mem_15_8_24
      if (((ce == 1'b1) && (op_mem_15_8_24_rst == 1'b1)))
        begin
          op_mem_15_8_24 <= 1'b0;
        end
      else if (((ce == 1'b1) && (op_mem_15_8_24_en == 1'b1)))
        begin
          op_mem_15_8_24 <= op_mem_15_8_24_next;
        end
    end
  always @(posedge clk)
    begin:proc_op_mem_16_8_24
      if (((ce == 1'b1) && (op_mem_16_8_24_rst == 1'b1)))
        begin
          op_mem_16_8_24 <= 1'b0;
        end
      else if (((ce == 1'b1) && (op_mem_16_8_24_en == 1'b1)))
        begin
          op_mem_16_8_24 <= op_mem_16_8_24_next;
        end
    end
  always @(d_1_22 or en_1_25 or op_mem_0_8_24 or op_mem_10_8_24 or op_mem_11_8_24 or op_mem_12_8_24 or op_mem_13_8_24 or op_mem_14_8_24 or op_mem_15_8_24 or op_mem_1_8_24 or op_mem_2_8_24 or op_mem_3_8_24 or op_mem_4_8_24 or op_mem_5_8_24 or op_mem_6_8_24 or op_mem_7_8_24 or op_mem_8_8_24 or op_mem_9_8_24 or rst_1_29)
    begin:proc_if_10_5
      if (rst_1_29)
        begin
          op_mem_0_join_10_5_rst = 1'b1;
        end
      else if (en_1_25)
        begin
          op_mem_0_join_10_5_rst = 1'b0;
        end
      else 
        begin
          op_mem_0_join_10_5_rst = 1'b0;
        end
      if (en_1_25)
        begin
          op_mem_0_join_10_5_en = 1'b1;
        end
      else 
        begin
          op_mem_0_join_10_5_en = 1'b0;
        end
      op_mem_0_join_10_5 = d_1_22;
      if (rst_1_29)
        begin
          op_mem_2_join_10_5_rst = 1'b1;
        end
      else if (en_1_25)
        begin
          op_mem_2_join_10_5_rst = 1'b0;
        end
      else 
        begin
          op_mem_2_join_10_5_rst = 1'b0;
        end
      if (en_1_25)
        begin
          op_mem_2_join_10_5_en = 1'b1;
        end
      else 
        begin
          op_mem_2_join_10_5_en = 1'b0;
        end
      op_mem_2_join_10_5 = op_mem_1_8_24;
      if (rst_1_29)
        begin
          op_mem_5_join_10_5_rst = 1'b1;
        end
      else if (en_1_25)
        begin
          op_mem_5_join_10_5_rst = 1'b0;
        end
      else 
        begin
          op_mem_5_join_10_5_rst = 1'b0;
        end
      if (en_1_25)
        begin
          op_mem_5_join_10_5_en = 1'b1;
        end
      else 
        begin
          op_mem_5_join_10_5_en = 1'b0;
        end
      op_mem_5_join_10_5 = op_mem_4_8_24;
      if (rst_1_29)
        begin
          op_mem_13_join_10_5_rst = 1'b1;
        end
      else if (en_1_25)
        begin
          op_mem_13_join_10_5_rst = 1'b0;
        end
      else 
        begin
          op_mem_13_join_10_5_rst = 1'b0;
        end
      if (en_1_25)
        begin
          op_mem_13_join_10_5_en = 1'b1;
        end
      else 
        begin
          op_mem_13_join_10_5_en = 1'b0;
        end
      op_mem_13_join_10_5 = op_mem_12_8_24;
      if (rst_1_29)
        begin
          op_mem_4_join_10_5_rst = 1'b1;
        end
      else if (en_1_25)
        begin
          op_mem_4_join_10_5_rst = 1'b0;
        end
      else 
        begin
          op_mem_4_join_10_5_rst = 1'b0;
        end
      if (en_1_25)
        begin
          op_mem_4_join_10_5_en = 1'b1;
        end
      else 
        begin
          op_mem_4_join_10_5_en = 1'b0;
        end
      op_mem_4_join_10_5 = op_mem_3_8_24;
      if (rst_1_29)
        begin
          op_mem_7_join_10_5_rst = 1'b1;
        end
      else if (en_1_25)
        begin
          op_mem_7_join_10_5_rst = 1'b0;
        end
      else 
        begin
          op_mem_7_join_10_5_rst = 1'b0;
        end
      if (en_1_25)
        begin
          op_mem_7_join_10_5_en = 1'b1;
        end
      else 
        begin
          op_mem_7_join_10_5_en = 1'b0;
        end
      op_mem_7_join_10_5 = op_mem_6_8_24;
      if (rst_1_29)
        begin
          op_mem_15_join_10_5_rst = 1'b1;
        end
      else if (en_1_25)
        begin
          op_mem_15_join_10_5_rst = 1'b0;
        end
      else 
        begin
          op_mem_15_join_10_5_rst = 1'b0;
        end
      if (en_1_25)
        begin
          op_mem_15_join_10_5_en = 1'b1;
        end
      else 
        begin
          op_mem_15_join_10_5_en = 1'b0;
        end
      op_mem_15_join_10_5 = op_mem_14_8_24;
      if (rst_1_29)
        begin
          op_mem_6_join_10_5_rst = 1'b1;
        end
      else if (en_1_25)
        begin
          op_mem_6_join_10_5_rst = 1'b0;
        end
      else 
        begin
          op_mem_6_join_10_5_rst = 1'b0;
        end
      if (en_1_25)
        begin
          op_mem_6_join_10_5_en = 1'b1;
        end
      else 
        begin
          op_mem_6_join_10_5_en = 1'b0;
        end
      op_mem_6_join_10_5 = op_mem_5_8_24;
      if (rst_1_29)
        begin
          op_mem_12_join_10_5_rst = 1'b1;
        end
      else if (en_1_25)
        begin
          op_mem_12_join_10_5_rst = 1'b0;
        end
      else 
        begin
          op_mem_12_join_10_5_rst = 1'b0;
        end
      if (en_1_25)
        begin
          op_mem_12_join_10_5_en = 1'b1;
        end
      else 
        begin
          op_mem_12_join_10_5_en = 1'b0;
        end
      op_mem_12_join_10_5 = op_mem_11_8_24;
      if (rst_1_29)
        begin
          op_mem_3_join_10_5_rst = 1'b1;
        end
      else if (en_1_25)
        begin
          op_mem_3_join_10_5_rst = 1'b0;
        end
      else 
        begin
          op_mem_3_join_10_5_rst = 1'b0;
        end
      if (en_1_25)
        begin
          op_mem_3_join_10_5_en = 1'b1;
        end
      else 
        begin
          op_mem_3_join_10_5_en = 1'b0;
        end
      op_mem_3_join_10_5 = op_mem_2_8_24;
      if (rst_1_29)
        begin
          op_mem_16_join_10_5_rst = 1'b1;
        end
      else if (en_1_25)
        begin
          op_mem_16_join_10_5_rst = 1'b0;
        end
      else 
        begin
          op_mem_16_join_10_5_rst = 1'b0;
        end
      if (en_1_25)
        begin
          op_mem_16_join_10_5_en = 1'b1;
        end
      else 
        begin
          op_mem_16_join_10_5_en = 1'b0;
        end
      op_mem_16_join_10_5 = op_mem_15_8_24;
      if (rst_1_29)
        begin
          op_mem_10_join_10_5_rst = 1'b1;
        end
      else if (en_1_25)
        begin
          op_mem_10_join_10_5_rst = 1'b0;
        end
      else 
        begin
          op_mem_10_join_10_5_rst = 1'b0;
        end
      if (en_1_25)
        begin
          op_mem_10_join_10_5_en = 1'b1;
        end
      else 
        begin
          op_mem_10_join_10_5_en = 1'b0;
        end
      op_mem_10_join_10_5 = op_mem_9_8_24;
      if (rst_1_29)
        begin
          op_mem_1_join_10_5_rst = 1'b1;
        end
      else if (en_1_25)
        begin
          op_mem_1_join_10_5_rst = 1'b0;
        end
      else 
        begin
          op_mem_1_join_10_5_rst = 1'b0;
        end
      if (en_1_25)
        begin
          op_mem_1_join_10_5_en = 1'b1;
        end
      else 
        begin
          op_mem_1_join_10_5_en = 1'b0;
        end
      op_mem_1_join_10_5 = op_mem_0_8_24;
      if (rst_1_29)
        begin
          op_mem_8_join_10_5_rst = 1'b1;
        end
      else if (en_1_25)
        begin
          op_mem_8_join_10_5_rst = 1'b0;
        end
      else 
        begin
          op_mem_8_join_10_5_rst = 1'b0;
        end
      if (en_1_25)
        begin
          op_mem_8_join_10_5_en = 1'b1;
        end
      else 
        begin
          op_mem_8_join_10_5_en = 1'b0;
        end
      op_mem_8_join_10_5 = op_mem_7_8_24;
      if (rst_1_29)
        begin
          op_mem_14_join_10_5_rst = 1'b1;
        end
      else if (en_1_25)
        begin
          op_mem_14_join_10_5_rst = 1'b0;
        end
      else 
        begin
          op_mem_14_join_10_5_rst = 1'b0;
        end
      if (en_1_25)
        begin
          op_mem_14_join_10_5_en = 1'b1;
        end
      else 
        begin
          op_mem_14_join_10_5_en = 1'b0;
        end
      op_mem_14_join_10_5 = op_mem_13_8_24;
      if (rst_1_29)
        begin
          op_mem_9_join_10_5_rst = 1'b1;
        end
      else if (en_1_25)
        begin
          op_mem_9_join_10_5_rst = 1'b0;
        end
      else 
        begin
          op_mem_9_join_10_5_rst = 1'b0;
        end
      if (en_1_25)
        begin
          op_mem_9_join_10_5_en = 1'b1;
        end
      else 
        begin
          op_mem_9_join_10_5_en = 1'b0;
        end
      op_mem_9_join_10_5 = op_mem_8_8_24;
      if (rst_1_29)
        begin
          op_mem_11_join_10_5_rst = 1'b1;
        end
      else if (en_1_25)
        begin
          op_mem_11_join_10_5_rst = 1'b0;
        end
      else 
        begin
          op_mem_11_join_10_5_rst = 1'b0;
        end
      if (en_1_25)
        begin
          op_mem_11_join_10_5_en = 1'b1;
        end
      else 
        begin
          op_mem_11_join_10_5_en = 1'b0;
        end
      op_mem_11_join_10_5 = op_mem_10_8_24;
    end
  assign op_mem_0_8_24_next = d_1_22;
  assign op_mem_0_8_24_rst = op_mem_0_join_10_5_rst;
  assign op_mem_0_8_24_en = op_mem_0_join_10_5_en;
  assign op_mem_1_8_24_next = op_mem_0_8_24;
  assign op_mem_1_8_24_rst = op_mem_1_join_10_5_rst;
  assign op_mem_1_8_24_en = op_mem_1_join_10_5_en;
  assign op_mem_2_8_24_next = op_mem_1_8_24;
  assign op_mem_2_8_24_rst = op_mem_2_join_10_5_rst;
  assign op_mem_2_8_24_en = op_mem_2_join_10_5_en;
  assign op_mem_3_8_24_next = op_mem_2_8_24;
  assign op_mem_3_8_24_rst = op_mem_3_join_10_5_rst;
  assign op_mem_3_8_24_en = op_mem_3_join_10_5_en;
  assign op_mem_4_8_24_next = op_mem_3_8_24;
  assign op_mem_4_8_24_rst = op_mem_4_join_10_5_rst;
  assign op_mem_4_8_24_en = op_mem_4_join_10_5_en;
  assign op_mem_5_8_24_next = op_mem_4_8_24;
  assign op_mem_5_8_24_rst = op_mem_5_join_10_5_rst;
  assign op_mem_5_8_24_en = op_mem_5_join_10_5_en;
  assign op_mem_6_8_24_next = op_mem_5_8_24;
  assign op_mem_6_8_24_rst = op_mem_6_join_10_5_rst;
  assign op_mem_6_8_24_en = op_mem_6_join_10_5_en;
  assign op_mem_7_8_24_next = op_mem_6_8_24;
  assign op_mem_7_8_24_rst = op_mem_7_join_10_5_rst;
  assign op_mem_7_8_24_en = op_mem_7_join_10_5_en;
  assign op_mem_8_8_24_next = op_mem_7_8_24;
  assign op_mem_8_8_24_rst = op_mem_8_join_10_5_rst;
  assign op_mem_8_8_24_en = op_mem_8_join_10_5_en;
  assign op_mem_9_8_24_next = op_mem_8_8_24;
  assign op_mem_9_8_24_rst = op_mem_9_join_10_5_rst;
  assign op_mem_9_8_24_en = op_mem_9_join_10_5_en;
  assign op_mem_10_8_24_next = op_mem_9_8_24;
  assign op_mem_10_8_24_rst = op_mem_10_join_10_5_rst;
  assign op_mem_10_8_24_en = op_mem_10_join_10_5_en;
  assign op_mem_11_8_24_next = op_mem_10_8_24;
  assign op_mem_11_8_24_rst = op_mem_11_join_10_5_rst;
  assign op_mem_11_8_24_en = op_mem_11_join_10_5_en;
  assign op_mem_12_8_24_next = op_mem_11_8_24;
  assign op_mem_12_8_24_rst = op_mem_12_join_10_5_rst;
  assign op_mem_12_8_24_en = op_mem_12_join_10_5_en;
  assign op_mem_13_8_24_next = op_mem_12_8_24;
  assign op_mem_13_8_24_rst = op_mem_13_join_10_5_rst;
  assign op_mem_13_8_24_en = op_mem_13_join_10_5_en;
  assign op_mem_14_8_24_next = op_mem_13_8_24;
  assign op_mem_14_8_24_rst = op_mem_14_join_10_5_rst;
  assign op_mem_14_8_24_en = op_mem_14_join_10_5_en;
  assign op_mem_15_8_24_next = op_mem_14_8_24;
  assign op_mem_15_8_24_rst = op_mem_15_join_10_5_rst;
  assign op_mem_15_8_24_en = op_mem_15_join_10_5_en;
  assign op_mem_16_8_24_next = op_mem_15_8_24;
  assign op_mem_16_8_24_rst = op_mem_16_join_10_5_rst;
  assign op_mem_16_8_24_en = op_mem_16_join_10_5_en;
  assign q = op_mem_16_8_24;
endmodule
`timescale 1 ns / 10 ps
module sysgen_delay_52cccd8896 (
  input [(1 - 1):0] d,
  input [(1 - 1):0] en,
  input [(1 - 1):0] rst,
  output [(1 - 1):0] q,
  input clk,
  input ce,
  input clr);
  wire d_1_22;
  wire en_1_25;
  wire rst_1_29;
  wire op_mem_0_8_24_next;
  reg op_mem_0_8_24 = 1'b0;
  wire op_mem_0_8_24_rst;
  wire op_mem_0_8_24_en;
  localparam [(1 - 1):0] const_value = 1'b1;
  reg op_mem_0_join_10_5;
  reg op_mem_0_join_10_5_en;
  reg op_mem_0_join_10_5_rst;
  assign d_1_22 = d;
  assign en_1_25 = en;
  assign rst_1_29 = rst;
  always @(posedge clk)
    begin:proc_op_mem_0_8_24
      if (((ce == 1'b1) && (op_mem_0_8_24_rst == 1'b1)))
        begin
          op_mem_0_8_24 <= 1'b0;
        end
      else if (((ce == 1'b1) && (op_mem_0_8_24_en == 1'b1)))
        begin
          op_mem_0_8_24 <= op_mem_0_8_24_next;
        end
    end
  always @(d_1_22 or en_1_25 or rst_1_29)
    begin:proc_if_10_5
      if (rst_1_29)
        begin
          op_mem_0_join_10_5_rst = 1'b1;
        end
      else if (en_1_25)
        begin
          op_mem_0_join_10_5_rst = 1'b0;
        end
      else 
        begin
          op_mem_0_join_10_5_rst = 1'b0;
        end
      if (en_1_25)
        begin
          op_mem_0_join_10_5_en = 1'b1;
        end
      else 
        begin
          op_mem_0_join_10_5_en = 1'b0;
        end
      op_mem_0_join_10_5 = d_1_22;
    end
  assign op_mem_0_8_24_next = d_1_22;
  assign op_mem_0_8_24_rst = op_mem_0_join_10_5_rst;
  assign op_mem_0_8_24_en = op_mem_0_join_10_5_en;
  assign q = op_mem_0_8_24;
endmodule
`timescale 1 ns / 10 ps
module sysgen_reinterpret_4bd3487388 (
  input [(34 - 1):0] input_port,
  output [(34 - 1):0] output_port,
  input clk,
  input ce,
  input clr);
  wire signed [(34 - 1):0] input_port_1_40;
  wire [(34 - 1):0] output_port_5_5_force;
  assign input_port_1_40 = input_port;
  assign output_port_5_5_force = input_port_1_40;
  assign output_port = output_port_5_5_force;
endmodule
`timescale 1 ns / 10 ps
module sysgen_constant_1aff05159a (
  output [(4 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 4'b1111;
endmodule
`timescale 1 ns / 10 ps
module sysgen_relational_f303c211e7 (
  input [(4 - 1):0] a,
  input [(4 - 1):0] b,
  output [(1 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire [(4 - 1):0] a_1_31;
  wire [(4 - 1):0] b_1_34;
  localparam [(1 - 1):0] const_value = 1'b1;
  wire result_12_3_rel;
  assign a_1_31 = a;
  assign b_1_34 = b;
  assign result_12_3_rel = a_1_31 == b_1_34;
  assign op = result_12_3_rel;
endmodule
`timescale 1 ns / 10 ps
module sysgen_relational_fc1426e2d9 (
  input [(8 - 1):0] a,
  input [(8 - 1):0] b,
  output [(1 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire [(8 - 1):0] a_1_31;
  wire [(8 - 1):0] b_1_34;
  localparam [(1 - 1):0] const_value = 1'b1;
  wire result_12_3_rel;
  assign a_1_31 = a;
  assign b_1_34 = b;
  assign result_12_3_rel = a_1_31 == b_1_34;
  assign op = result_12_3_rel;
endmodule
`timescale 1 ns / 10 ps
module sysgen_relational_9133ff9c4b (
  input [(2 - 1):0] a,
  input [(2 - 1):0] b,
  output [(1 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire [(2 - 1):0] a_1_31;
  wire [(2 - 1):0] b_1_34;
  localparam [(1 - 1):0] const_value = 1'b1;
  wire result_12_3_rel;
  assign a_1_31 = a;
  assign b_1_34 = b;
  assign result_12_3_rel = a_1_31 == b_1_34;
  assign op = result_12_3_rel;
endmodule
`timescale 1 ns / 10 ps
module sysgen_constant_07b701207a (
  output [(8 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 8'b11001000;
endmodule
`timescale 1 ns / 10 ps
module sysgen_constant_118900d9b9 (
  output [(2 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 2'b11;
endmodule
//-----------------------------------------------------------------
 // System Generator version 13.2 VERILOG source file.
 //
 // Copyright(C) 2011 by Xilinx, Inc.  All rights reserved.  This
 // text/file contains proprietary, confidential information of Xilinx,
 // Inc., is distributed under license from Xilinx, Inc., and may be used,
 // copied and/or disclosed only pursuant to the terms of a valid license
 // agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
 // this text/file solely for design, simulation, implementation and
 // creation of design files limited to Xilinx devices or technologies.
 // Use with non-Xilinx devices or technologies is expressly prohibited
 // and immediately terminates your license unless covered by a separate
 // agreement.
 //
 // Xilinx is providing this design, code, or information "as is" solely
 // for use in developing programs and solutions for Xilinx devices.  By
 // providing this design, code, or information as one possible
 // implementation of this feature, application or standard, Xilinx is
 // making no representation that this implementation is free from any
 // claims of infringement.  You are responsible for obtaining any rights
 // you may require for your implementation.  Xilinx expressly disclaims
 // any warranty whatsoever with respect to the adequacy of the
 // implementation, including but not limited to warranties of
 // merchantability or fitness for a particular purpose.
 //
 // Xilinx products are not intended for use in life support appliances,
 // devices, or systems.  Use in such applications is expressly prohibited.
 //
 // Any modifications that are made to the source code are done at the user's
 // sole risk and will be unsupported.
 //
 // This copyright and support notice must be retained as part of this
 // text at all times.  (c) Copyright 1995-2011 Xilinx, Inc.  All rights
 // reserved.
 //-----------------------------------------------------------------
module channelizer_xlaxififogen(
 s_aclk,
 ce,
 aresetn,
 axis_underflow,
 axis_overflow,
 axis_data_count,
 axis_prog_full_thresh,
 axis_prog_empty_thresh,
 s_axis_tdata,
 s_axis_tstrb,
 s_axis_tkeep,
 s_axis_tlast,
 s_axis_tid,
 s_axis_tdest,
 s_axis_tuser,
 s_axis_tvalid,
 s_axis_tready,
 m_axis_tdata,
 m_axis_tstrb,
 m_axis_tkeep,
 m_axis_tlast,
 m_axis_tid,
 m_axis_tdest,
 m_axis_tuser,
 m_axis_tvalid,
 m_axis_tready
 );
 parameter core_name0 = "";
 parameter has_aresetn = -1;
 parameter tdata_width = -1;
 parameter tdest_width = -1;
 parameter tstrb_width = -1;
 parameter tkeep_width = -1;
 parameter tid_width = -1;
 parameter tuser_width = -1;
 parameter depth_bits = -1; 
 input ce;


 input s_aclk;
input aresetn;
output axis_underflow;
output axis_overflow;
output [depth_bits-1:0] axis_data_count;
input  [depth_bits-2:0] axis_prog_full_thresh;
input  [depth_bits-2:0] axis_prog_empty_thresh;
input  [tdata_width-1:0] s_axis_tdata;
input  [tstrb_width-1:0] s_axis_tstrb;
input  [tkeep_width-1:0] s_axis_tkeep;
input                     s_axis_tlast;
input  [tid_width-1:0] s_axis_tid;
input  [tdest_width-1:0] s_axis_tdest;
input  [tuser_width-1:0] s_axis_tuser;
input                     s_axis_tvalid;
output                    s_axis_tready;
output  [tdata_width-1:0] m_axis_tdata;
output  [tstrb_width-1:0] m_axis_tstrb;
output  [tkeep_width-1:0] m_axis_tkeep;
output                        m_axis_tlast;
output  [tid_width-1:0] m_axis_tid;
output  [tdest_width-1:0] m_axis_tdest;
output  [tuser_width-1:0] m_axis_tuser;
output                        m_axis_tvalid;
input                 m_axis_tready;


   wire srst;
   reg reset_gen1 = 1'b0;
   reg reset_gen_d1 = 1'b0;
   reg reset_gen_d2 = 1'b0;
 
   always @(posedge s_aclk)
   begin
   	reset_gen1 <= 1'b1;
 	reset_gen_d1 <= reset_gen1;
 	reset_gen_d2 <= reset_gen_d1;
   end
 
   generate
   if(has_aresetn == 0)
   begin:if_block
         assign srst = reset_gen_d2;
   end
   else
   begin:else_block
     assign srst = ~((~aresetn) & ce);
   end
   endgenerate
 
   generate



if (core_name0 == "channelizer_fifo_generator_v12_0_0") 
     begin:comp0
channelizer_fifo_generator_v12_0_0 core_instance0 ( 
        .s_aclk(s_aclk),
        .s_aresetn(srst),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tid  (s_axis_tid),
        .s_axis_tdest(s_axis_tdest),
        .s_axis_tuser(s_axis_tuser),
        .s_axis_tvalid(s_axis_tvalid),
        .s_axis_tready(s_axis_tready),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tid  (m_axis_tid),
        .m_axis_tdest(m_axis_tdest),
        .m_axis_tuser(m_axis_tuser),
        .m_axis_tvalid(m_axis_tvalid),
        .m_axis_tready(m_axis_tready)
 
       ); 
     end 

endgenerate
 endmodule

module channelizer_xlcounter_free  (ce, clr, clk, op, up, load, din, en, rst);
 
 parameter core_name0= "";
 parameter op_width= 5;
 parameter op_arith= `xlSigned;
 
 input ce, clr, clk;
 input up, load;
 input [op_width-1:0] din;
 input en, rst;
 output [op_width-1:0] op;
 
 parameter [(8*op_width)-1:0] oneStr = { op_width{"1"}}; 
 
 wire  core_sinit;
 wire  core_ce;
 wire [op_width-1:0] op_net;
 
    assign core_ce = ce & en;
    assign core_sinit = (clr | rst) & ce;
    assign op = op_net;
 
 generate



if (core_name0 == "channelizer_c_counter_binary_v12_0_0") 
     begin:comp0
channelizer_c_counter_binary_v12_0_0 core_instance0 ( 
        .CLK(clk),
        .CE(core_ce),
        .SINIT(core_sinit),
        .Q(op_net) 
       ); 
     end 

if (core_name0 == "channelizer_c_counter_binary_v12_0_1") 
     begin:comp1
channelizer_c_counter_binary_v12_0_1 core_instance1 ( 
        .CLK(clk),
        .CE(core_ce),
        .SINIT(core_sinit),
        .Q(op_net) 
       ); 
     end 

if (core_name0 == "channelizer_c_counter_binary_v12_0_2") 
     begin:comp2
channelizer_c_counter_binary_v12_0_2 core_instance2 ( 
        .CLK(clk),
        .CE(core_ce),
        .SINIT(core_sinit),
        .Q(op_net) 
       ); 
     end 

if (core_name0 == "channelizer_c_counter_binary_v12_0_3") 
     begin:comp3
channelizer_c_counter_binary_v12_0_3 core_instance3 ( 
        .CLK(clk),
        .CE(core_ce),
        .SINIT(core_sinit),
        .Q(op_net) 
       ); 
     end 

endgenerate 
 endmodule
module channelizer_xldpram  (dina, addra, wea, a_ce, a_clk, rsta, ena, douta, dinb, addrb, web, b_ce, b_clk, rstb, enb, doutb);
 
 
 parameter core_name0= "";
 parameter c_width_a= 13;
 parameter c_address_width_a= 4;
 parameter c_width_b= 13;
 parameter c_address_width_b= 4;
 parameter latency= 1;
                
 
 input [c_width_a-1:0] dina;
 input [c_address_width_a-1:0] addra;
 input wea, a_ce, a_clk, rsta, ena;
 input [c_width_b-1:0] dinb;
 input [c_address_width_b-1:0] addrb;
 input web, b_ce, b_clk, rstb, enb;
 output [c_width_a-1:0] douta;
 output [c_width_b-1:0] doutb;
 
 wire [c_address_width_a-1:0] core_addra;
 wire [c_address_width_b-1:0] core_addrb;
 wire [c_width_a-1:0] core_dina,core_douta,dly_douta;
 wire [c_width_b-1:0] core_dinb,core_doutb,dly_doutb;
 wire  core_wea,core_web;
 wire  core_a_ce,core_b_ce;
 wire  sinita,sinitb;
 
 assign core_addra = addra;
 assign core_dina = dina;
 assign douta = dly_douta;
 assign core_wea = wea;
 assign core_a_ce = a_ce & ena;
 assign sinita = rsta & a_ce;
 
 assign core_addrb = addrb;
 assign core_dinb = dinb;
 assign doutb = dly_doutb;
 assign core_web = web;
 assign core_b_ce = b_ce & enb;
 assign sinitb = rstb  & b_ce;
 
 generate




if (core_name0 == "channelizer_blk_mem_gen_v8_2_0") 
     begin:comp0
channelizer_blk_mem_gen_v8_2_0 core_instance0 ( 
      .addra(core_addra),
      .clka(a_clk),
      .addrb(core_addrb),
      .clkb(b_clk),
      .dina(core_dina),
      .wea(core_wea),
      .dinb(core_dinb),
      .web(core_web),
      .ena(core_a_ce),
      .enb(core_b_ce),
      .rsta(sinita),
      .rstb(sinitb),
      .douta(core_douta),
      .doutb(core_doutb) 
       ); 
     end 

 if (latency > 2)
   begin:latency_test_instA
    synth_reg # (c_width_a, latency-2) 
    regA(
      .i(core_douta),
      .ce(core_a_ce),
      .clr(1'b0),
      .clk(a_clk),
      .o(dly_douta));
   end
 
 if (latency > 2)
   begin:latency_test_instB
    synth_reg # (c_width_b, latency-2) 
    regB(
      .i(core_doutb),
      .ce(core_b_ce),
      .clr(1'b0),
      .clk(b_clk),
      .o(dly_doutb));
   end
     
 if (latency <= 2)
    begin:latency1
      assign dly_douta = core_douta;
      assign dly_doutb = core_doutb;
    end
 
 endgenerate
 
 endmodule


`timescale 1 ns / 10 ps
module  xlfast_fourier_transform_c87919ddd6bfbf81b10158bf539068dc (ce,clk,event_data_in_channel_halt,event_data_out_channel_halt,event_frame_started,event_status_channel_halt,event_tlast_missing,event_tlast_unexpected,m_axis_data_tdata_xn_im_0,m_axis_data_tdata_xn_re_0,m_axis_data_tlast,m_axis_data_tready,m_axis_data_tvalid,rst,s_axis_config_tdata_fwd_inv,s_axis_config_tready,s_axis_config_tvalid,s_axis_data_tdata_xn_im_0,s_axis_data_tdata_xn_re_0,s_axis_data_tlast,s_axis_data_tready,s_axis_data_tvalid);

input ce;
input clk;
output event_data_in_channel_halt;
output event_data_out_channel_halt;
output event_frame_started;
output event_status_channel_halt;
output event_tlast_missing;
output event_tlast_unexpected;
output[20:0] m_axis_data_tdata_xn_im_0;
output[20:0] m_axis_data_tdata_xn_re_0;
output m_axis_data_tlast;
input m_axis_data_tready;
output m_axis_data_tvalid;
input rst;
input[0:0] s_axis_config_tdata_fwd_inv;
output s_axis_config_tready;
input s_axis_config_tvalid;
input[15:0] s_axis_data_tdata_xn_im_0;
input[15:0] s_axis_data_tdata_xn_re_0;
input s_axis_data_tlast;
output s_axis_data_tready;
input s_axis_data_tvalid;
wire aresetn_net;
wire[47:0] m_axis_data_tdata_net;
wire[7:0] s_axis_config_tdata_net;
wire[31:0] s_axis_data_tdata_net;
  assign aresetn_net = rst | (~ ce);
  assign m_axis_data_tdata_xn_im_0 = m_axis_data_tdata_net[44 : 24];
  assign m_axis_data_tdata_xn_re_0 = m_axis_data_tdata_net[20 : 0];
  assign s_axis_config_tdata_net[7 : 1] = 7'b0;
  assign s_axis_config_tdata_net[0 : 0] = s_axis_config_tdata_fwd_inv;
  assign s_axis_data_tdata_net[31 : 16] = s_axis_data_tdata_xn_im_0;
  assign s_axis_data_tdata_net[15 : 0] = s_axis_data_tdata_xn_re_0;
  channelizer_xfft_v9_0_0 channelizer_xfft_v9_0_0_instance(
      .aclk(clk),
      .aclken(ce),
      .aresetn(aresetn_net),
      .event_data_in_channel_halt(event_data_in_channel_halt),
      .event_data_out_channel_halt(event_data_out_channel_halt),
      .event_frame_started(event_frame_started),
      .event_status_channel_halt(event_status_channel_halt),
      .event_tlast_missing(event_tlast_missing),
      .event_tlast_unexpected(event_tlast_unexpected),
      .m_axis_data_tdata(m_axis_data_tdata_net),
      .m_axis_data_tlast(m_axis_data_tlast),
      .m_axis_data_tready(m_axis_data_tready),
      .m_axis_data_tvalid(m_axis_data_tvalid),
      .s_axis_config_tdata(s_axis_config_tdata_net),
      .s_axis_config_tready(s_axis_config_tready),
      .s_axis_config_tvalid(s_axis_config_tvalid),
      .s_axis_data_tdata(s_axis_data_tdata_net),
      .s_axis_data_tlast(s_axis_data_tlast),
      .s_axis_data_tready(s_axis_data_tready),
      .s_axis_data_tvalid(s_axis_data_tvalid)
    );

 endmodule



`timescale 1 ns / 10 ps
module  xlfir_compiler_19490f93cbd7e22fee0db5c2ec90c7a6 (ce,clk,event_s_config_tlast_missing,event_s_config_tlast_unexpected,event_s_data_tlast_missing,event_s_data_tlast_unexpected,m_axis_data_tdata_path0,m_axis_data_tdata_path1,m_axis_data_tlast,m_axis_data_tready,m_axis_data_tvalid,rst,s_axis_config_tdata_fsel,s_axis_config_tlast,s_axis_config_tready,s_axis_config_tvalid,s_axis_data_tdata_path0,s_axis_data_tdata_path1,s_axis_data_tlast,s_axis_data_tready,s_axis_data_tvalid,src_ce,src_clk);

input ce;
input clk;
output event_s_config_tlast_missing;
output event_s_config_tlast_unexpected;
output event_s_data_tlast_missing;
output event_s_data_tlast_unexpected;
output[33:0] m_axis_data_tdata_path0;
output[33:0] m_axis_data_tdata_path1;
output m_axis_data_tlast;
input m_axis_data_tready;
output m_axis_data_tvalid;
input rst;
input[3:0] s_axis_config_tdata_fsel;
input s_axis_config_tlast;
output s_axis_config_tready;
input s_axis_config_tvalid;
input[17:0] s_axis_data_tdata_path0;
input[17:0] s_axis_data_tdata_path1;
input s_axis_data_tlast;
output s_axis_data_tready;
input s_axis_data_tvalid;
input src_ce;
input src_clk;
wire aresetn_net;
wire[79:0] m_axis_data_tdata_net;
wire[7:0] s_axis_config_tdata_net;
wire[47:0] s_axis_data_tdata_net;
  assign aresetn_net = rst | (~ ce);
  assign m_axis_data_tdata_path1 = m_axis_data_tdata_net[73 : 40];
  assign m_axis_data_tdata_path0 = m_axis_data_tdata_net[33 : 0];
  assign s_axis_config_tdata_net[7 : 4] = 4'b0;
  assign s_axis_config_tdata_net[3 : 0] = s_axis_config_tdata_fsel;
  assign s_axis_data_tdata_net[47 : 42] = 6'b0;
  assign s_axis_data_tdata_net[41 : 24] = s_axis_data_tdata_path1;
  assign s_axis_data_tdata_net[23 : 18] = 6'b0;
  assign s_axis_data_tdata_net[17 : 0] = s_axis_data_tdata_path0;
  channelizer_fir_compiler_v7_2_0 channelizer_fir_compiler_v7_2_0_instance(
      .aclk(clk),
      .aclken(ce),
      .aresetn(aresetn_net),
      .event_s_config_tlast_missing(event_s_config_tlast_missing),
      .event_s_config_tlast_unexpected(event_s_config_tlast_unexpected),
      .event_s_data_tlast_missing(event_s_data_tlast_missing),
      .event_s_data_tlast_unexpected(event_s_data_tlast_unexpected),
      .m_axis_data_tdata(m_axis_data_tdata_net),
      .m_axis_data_tlast(m_axis_data_tlast),
      .m_axis_data_tready(m_axis_data_tready),
      .m_axis_data_tvalid(m_axis_data_tvalid),
      .s_axis_config_tdata(s_axis_config_tdata_net),
      .s_axis_config_tlast(s_axis_config_tlast),
      .s_axis_config_tready(s_axis_config_tready),
      .s_axis_config_tvalid(s_axis_config_tvalid),
      .s_axis_data_tdata(s_axis_data_tdata_net),
      .s_axis_data_tlast(s_axis_data_tlast),
      .s_axis_data_tready(s_axis_data_tready),
      .s_axis_data_tvalid(s_axis_data_tvalid)
    );

 endmodule



