`ifndef xlConvPkgIncluded
`include "conv_pkg.v"
`endif

`timescale 1 ns / 10 ps
// Generated from Simulink block channelizer_256/channelizer/fft1/Subsystem
module channelizer_256_subsystem_x0 (
  input [32-1:0] in1,
  output [16-1:0] imag,
  output [16-1:0] real_x0
);
  wire [16-1:0] reinterpret1_output_port_net;
  wire [16-1:0] reinterpret_output_port_net;
  wire [32-1:0] dual_port_ram_doutb_net;
  wire [16-1:0] slice_y_net;
  wire [16-1:0] slice1_y_net;
  assign imag = reinterpret1_output_port_net;
  assign real_x0 = reinterpret_output_port_net;
  assign dual_port_ram_doutb_net = in1;
  sysgen_reinterpret_4e0592666f reinterpret (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice_y_net),
    .output_port(reinterpret_output_port_net)
  );
  sysgen_reinterpret_4e0592666f reinterpret1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice1_y_net),
    .output_port(reinterpret1_output_port_net)
  );
  channelizer_256_xlslice #(
    .new_lsb(0),
    .new_msb(15),
    .x_width(32),
    .y_width(16)
  )
  slice (
    .x(dual_port_ram_doutb_net),
    .y(slice_y_net)
  );
  channelizer_256_xlslice #(
    .new_lsb(16),
    .new_msb(31),
    .x_width(32),
    .y_width(16)
  )
  slice1 (
    .x(dual_port_ram_doutb_net),
    .y(slice1_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block channelizer_256/channelizer/fft1/Subsystem1
module channelizer_256_subsystem1_x0 (
  input [25-1:0] imag,
  input [25-1:0] real_x0,
  input clk_1,
  input ce_1,
  output [32-1:0] out1
);
  wire [32-1:0] concat_y_net;
  wire [25-1:0] ifft_fast_fourier_transform_8_1_m_axis_data_tdata_xn_im_0_net;
  wire [25-1:0] ifft_fast_fourier_transform_8_1_m_axis_data_tdata_xn_re_0_net;
  wire clk_net;
  wire ce_net;
  wire [16-1:0] convert2_dout_net;
  wire [16-1:0] reinterpret2_output_port_net;
  wire [16-1:0] reinterpret1_output_port_net;
  wire [16-1:0] convert_dout_net;
  assign out1 = concat_y_net;
  assign ifft_fast_fourier_transform_8_1_m_axis_data_tdata_xn_im_0_net = imag;
  assign ifft_fast_fourier_transform_8_1_m_axis_data_tdata_xn_re_0_net = real_x0;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  sysgen_concat_c4b57f4497 concat (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .in0(reinterpret2_output_port_net),
    .in1(reinterpret1_output_port_net),
    .y(concat_y_net)
  );
  channelizer_256_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(15),
    .din_width(25),
    .dout_arith(2),
    .dout_bin_pt(13),
    .dout_width(16),
    .latency(0),
    .overflow(`xlSaturate),
    .quantization(`xlTruncate)
  )
  convert (
    .clr(1'b0),
    .en(1'b1),
    .din(ifft_fast_fourier_transform_8_1_m_axis_data_tdata_xn_im_0_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(convert_dout_net)
  );
  channelizer_256_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(15),
    .din_width(25),
    .dout_arith(2),
    .dout_bin_pt(13),
    .dout_width(16),
    .latency(0),
    .overflow(`xlSaturate),
    .quantization(`xlTruncate)
  )
  convert2 (
    .clr(1'b0),
    .en(1'b1),
    .din(ifft_fast_fourier_transform_8_1_m_axis_data_tdata_xn_re_0_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(convert2_dout_net)
  );
  sysgen_reinterpret_3149fc1051 reinterpret1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(convert2_dout_net),
    .output_port(reinterpret1_output_port_net)
  );
  sysgen_reinterpret_3149fc1051 reinterpret2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(convert_dout_net),
    .output_port(reinterpret2_output_port_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block channelizer_256/channelizer/fft1
module channelizer_256_fft1 (
  input [1-1:0] ready_out,
  input [1-1:0] valid_in,
  input [32-1:0] data_in,
  input [1-1:0] last_in,
  input [1-1:0] reset_in,
  input clk_1,
  input ce_1,
  output ready_in,
  output valid_out,
  output [32-1:0] data_out
);
  wire ifft_fast_fourier_transform_8_1_s_axis_data_tready_net;
  wire ifft_fast_fourier_transform_8_1_m_axis_data_tvalid_net;
  wire [32-1:0] concat_y_net;
  wire [1-1:0] ready_out_net;
  wire [1-1:0] logical_y_net_x0;
  wire [32-1:0] dual_port_ram_doutb_net;
  wire [1-1:0] delay1_q_net;
  wire [1-1:0] logical_y_net;
  wire clk_net;
  wire ce_net;
  wire [16-1:0] reinterpret1_output_port_net;
  wire [16-1:0] reinterpret_output_port_net;
  wire [25-1:0] ifft_fast_fourier_transform_8_1_m_axis_data_tdata_xn_im_0_net;
  wire [25-1:0] ifft_fast_fourier_transform_8_1_m_axis_data_tdata_xn_re_0_net;
  wire [1-1:0] ifft_op_net;
  wire ifft_fast_fourier_transform_8_1_s_axis_config_tready_net;
  wire ifft_fast_fourier_transform_8_1_m_axis_data_tlast_net;
  wire ifft_fast_fourier_transform_8_1_event_frame_started_net;
  wire ifft_fast_fourier_transform_8_1_event_tlast_unexpected_net;
  wire ifft_fast_fourier_transform_8_1_event_tlast_missing_net;
  wire ifft_fast_fourier_transform_8_1_event_data_in_channel_halt_net;
  wire ifft_fast_fourier_transform_8_1_event_status_channel_halt_net;
  wire ifft_fast_fourier_transform_8_1_event_data_out_channel_halt_net;
  wire inverter_op_net;
  assign ready_in = ifft_fast_fourier_transform_8_1_s_axis_data_tready_net;
  assign valid_out = ifft_fast_fourier_transform_8_1_m_axis_data_tvalid_net;
  assign data_out = concat_y_net;
  assign ready_out_net = ready_out;
  assign logical_y_net_x0 = valid_in;
  assign dual_port_ram_doutb_net = data_in;
  assign delay1_q_net = last_in;
  assign logical_y_net = reset_in;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  channelizer_256_subsystem_x0 subsystem_x4 (
    .in1(dual_port_ram_doutb_net),
    .imag(reinterpret1_output_port_net),
    .real_x0(reinterpret_output_port_net)
  );
  channelizer_256_subsystem1_x0 subsystem1 (
    .imag(ifft_fast_fourier_transform_8_1_m_axis_data_tdata_xn_im_0_net),
    .real_x0(ifft_fast_fourier_transform_8_1_m_axis_data_tdata_xn_re_0_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .out1(concat_y_net)
  );
  sysgen_constant_b7c50d0aca ifft (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(ifft_op_net)
  );
  xlfast_fourier_transform_fff9011127114b5dfa3d6ad9e3e76129 ifft_fast_fourier_transform_8_1 (
    .s_axis_config_tdata_fwd_inv(ifft_op_net),
    .s_axis_config_tvalid(ifft_fast_fourier_transform_8_1_s_axis_config_tready_net),
    .s_axis_data_tdata_xn_im_0(reinterpret1_output_port_net),
    .s_axis_data_tdata_xn_re_0(reinterpret_output_port_net),
    .s_axis_data_tvalid(logical_y_net_x0),
    .s_axis_data_tlast(delay1_q_net),
    .m_axis_data_tready(ready_out_net),
    .rst(inverter_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .s_axis_config_tready(ifft_fast_fourier_transform_8_1_s_axis_config_tready_net),
    .s_axis_data_tready(ifft_fast_fourier_transform_8_1_s_axis_data_tready_net),
    .m_axis_data_tdata_xn_im_0(ifft_fast_fourier_transform_8_1_m_axis_data_tdata_xn_im_0_net),
    .m_axis_data_tdata_xn_re_0(ifft_fast_fourier_transform_8_1_m_axis_data_tdata_xn_re_0_net),
    .m_axis_data_tvalid(ifft_fast_fourier_transform_8_1_m_axis_data_tvalid_net),
    .m_axis_data_tlast(ifft_fast_fourier_transform_8_1_m_axis_data_tlast_net),
    .event_frame_started(ifft_fast_fourier_transform_8_1_event_frame_started_net),
    .event_tlast_unexpected(ifft_fast_fourier_transform_8_1_event_tlast_unexpected_net),
    .event_tlast_missing(ifft_fast_fourier_transform_8_1_event_tlast_missing_net),
    .event_data_in_channel_halt(ifft_fast_fourier_transform_8_1_event_data_in_channel_halt_net),
    .event_status_channel_halt(ifft_fast_fourier_transform_8_1_event_status_channel_halt_net),
    .event_data_out_channel_halt(ifft_fast_fourier_transform_8_1_event_data_out_channel_halt_net)
  );
  sysgen_inverter_692c4e9d5f inverter (
    .clr(1'b0),
    .ip(logical_y_net),
    .clk(clk_net),
    .ce(ce_net),
    .op(inverter_op_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block channelizer_256/channelizer/frame_reverse
module channelizer_256_frame_reverse (
  input ready_out,
  input valid_in,
  input [32-1:0] data_in,
  input last_in,
  input [1-1:0] reset_in,
  input clk_1,
  input ce_1,
  output [1-1:0] valid_out,
  output [32-1:0] data_out,
  output [1-1:0] last_out
);
  wire ce_net;
  wire [1-1:0] constant1_op_net;
  wire [1-1:0] logical_y_net_x0;
  wire [32-1:0] dual_port_ram_doutb_net;
  wire [1-1:0] delay1_q_net;
  wire ifft_fast_fourier_transform_8_1_s_axis_data_tready_net;
  wire fir_compiler_7_2_1_m_axis_data_tvalid_net;
  wire [32-1:0] concat_y_net;
  wire fir_compiler_7_2_1_m_axis_data_tlast_net;
  wire [1-1:0] logical_y_net;
  wire clk_net;
  wire [32-1:0] constant_op_net;
  wire [1-1:0] constant2_op_net;
  wire [9-1:0] counter_op_net;
  wire [1-1:0] logical1_y_net;
  wire [9-1:0] counter2_op_net;
  wire [1-1:0] delay_q_net;
  wire [32-1:0] dual_port_ram_douta_net;
  assign valid_out = logical_y_net_x0;
  assign data_out = dual_port_ram_doutb_net;
  assign last_out = delay1_q_net;
  assign ifft_fast_fourier_transform_8_1_s_axis_data_tready_net = ready_out;
  assign fir_compiler_7_2_1_m_axis_data_tvalid_net = valid_in;
  assign concat_y_net = data_in;
  assign fir_compiler_7_2_1_m_axis_data_tlast_net = last_in;
  assign logical_y_net = reset_in;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  sysgen_constant_0430b901da constant (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant_op_net)
  );
  sysgen_constant_f007950b6c constant1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant1_op_net)
  );
  sysgen_constant_b7c50d0aca constant2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant2_op_net)
  );
  channelizer_256_xlcounter_free #(
    .core_name0("channelizer_256_c_counter_binary_v12_0_0"),
    .op_arith(`xlUnsigned),
    .op_width(9)
  )
  counter (
    .clr(1'b0),
    .rst(logical_y_net),
    .en(logical1_y_net),
    .clk(clk_net),
    .ce(ce_net),
    .op(counter_op_net)
  );
  channelizer_256_xlcounter_free #(
    .core_name0("channelizer_256_c_counter_binary_v12_0_1"),
    .op_arith(`xlUnsigned),
    .op_width(9)
  )
  counter2 (
    .clr(1'b0),
    .rst(logical_y_net),
    .en(logical1_y_net),
    .clk(clk_net),
    .ce(ce_net),
    .op(counter2_op_net)
  );
  sysgen_delay_be4b47a029 delay (
    .clr(1'b0),
    .d(constant2_op_net),
    .rst(logical_y_net),
    .en(logical1_y_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay_q_net)
  );
  sysgen_delay_9d893c921a delay1 (
    .clr(1'b0),
    .d(fir_compiler_7_2_1_m_axis_data_tlast_net),
    .rst(logical_y_net),
    .en(logical1_y_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay1_q_net)
  );
  channelizer_256_xldpram #(
    .c_address_width_a(9),
    .c_address_width_b(9),
    .c_width_a(32),
    .c_width_b(32),
    .core_name0("channelizer_256_blk_mem_gen_v8_2_0"),
    .latency(1)
  )
  dual_port_ram (
    .addra(counter_op_net),
    .dina(concat_y_net),
    .wea(logical1_y_net),
    .addrb(counter2_op_net),
    .dinb(constant_op_net),
    .web(constant1_op_net),
    .rsta(logical_y_net),
    .rstb(logical_y_net),
    .ena(logical1_y_net),
    .enb(logical1_y_net),
    .a_clk(clk_net),
    .a_ce(ce_net),
    .b_clk(clk_net),
    .b_ce(ce_net),
    .douta(dual_port_ram_douta_net),
    .doutb(dual_port_ram_doutb_net)
  );
  sysgen_logical_2d2e86ecb2 logical (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d0(delay_q_net),
    .d1(fir_compiler_7_2_1_m_axis_data_tvalid_net),
    .y(logical_y_net_x0)
  );
  sysgen_logical_2d2e86ecb2 logical1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d0(ifft_fast_fourier_transform_8_1_s_axis_data_tready_net),
    .d1(fir_compiler_7_2_1_m_axis_data_tvalid_net),
    .y(logical1_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block channelizer_256/channelizer/poly_phase_filter/Subsystem
module channelizer_256_subsystem (
  input [32-1:0] in1,
  input clk_1,
  input ce_1,
  output [18-1:0] imag,
  output [18-1:0] real_x0
);
  wire [18-1:0] convert_dout_net;
  wire [18-1:0] convert1_dout_net;
  wire [32-1:0] data_in_net;
  wire clk_net;
  wire ce_net;
  wire [16-1:0] reinterpret3_output_port_net;
  wire [16-1:0] reinterpret_output_port_net;
  wire [16-1:0] lower_y_net;
  wire [16-1:0] upper_y_net;
  assign imag = convert_dout_net;
  assign real_x0 = convert1_dout_net;
  assign data_in_net = in1;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  channelizer_256_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(0),
    .din_width(16),
    .dout_arith(2),
    .dout_bin_pt(0),
    .dout_width(18),
    .latency(0),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  convert (
    .clr(1'b0),
    .en(1'b1),
    .din(reinterpret3_output_port_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(convert_dout_net)
  );
  channelizer_256_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(0),
    .din_width(16),
    .dout_arith(2),
    .dout_bin_pt(0),
    .dout_width(18),
    .latency(0),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  convert1 (
    .clr(1'b0),
    .en(1'b1),
    .din(reinterpret_output_port_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(convert1_dout_net)
  );
  sysgen_reinterpret_4e0592666f reinterpret (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lower_y_net),
    .output_port(reinterpret_output_port_net)
  );
  sysgen_reinterpret_4e0592666f reinterpret3 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(upper_y_net),
    .output_port(reinterpret3_output_port_net)
  );
  channelizer_256_xlslice #(
    .new_lsb(0),
    .new_msb(15),
    .x_width(32),
    .y_width(16)
  )
  lower (
    .x(data_in_net),
    .y(lower_y_net)
  );
  channelizer_256_xlslice #(
    .new_lsb(16),
    .new_msb(31),
    .x_width(32),
    .y_width(16)
  )
  upper (
    .x(data_in_net),
    .y(upper_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block channelizer_256/channelizer/poly_phase_filter/Subsystem1
module channelizer_256_subsystem1 (
  input [34-1:0] imag,
  input [34-1:0] real_x0,
  output [32-1:0] out1
);
  wire [32-1:0] concat_y_net;
  wire [34-1:0] fir_compiler_7_2_1_m_axis_data_tdata_path1_net;
  wire [34-1:0] fir_compiler_7_2_1_m_axis_data_tdata_path0_net;
  wire [16-1:0] slice1_y_net;
  wire [16-1:0] slice_y_net;
  wire [34-1:0] reinterpret1_output_port_net;
  wire [34-1:0] reinterpret2_output_port_net;
  assign out1 = concat_y_net;
  assign fir_compiler_7_2_1_m_axis_data_tdata_path1_net = imag;
  assign fir_compiler_7_2_1_m_axis_data_tdata_path0_net = real_x0;
  sysgen_concat_c4b57f4497 concat (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .in0(slice1_y_net),
    .in1(slice_y_net),
    .y(concat_y_net)
  );
  sysgen_reinterpret_6f16badb5b reinterpret1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(fir_compiler_7_2_1_m_axis_data_tdata_path0_net),
    .output_port(reinterpret1_output_port_net)
  );
  sysgen_reinterpret_6f16badb5b reinterpret2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(fir_compiler_7_2_1_m_axis_data_tdata_path1_net),
    .output_port(reinterpret2_output_port_net)
  );
  channelizer_256_xlslice #(
    .new_lsb(15),
    .new_msb(30),
    .x_width(34),
    .y_width(16)
  )
  slice (
    .x(reinterpret1_output_port_net),
    .y(slice_y_net)
  );
  channelizer_256_xlslice #(
    .new_lsb(15),
    .new_msb(30),
    .x_width(34),
    .y_width(16)
  )
  slice1 (
    .x(reinterpret2_output_port_net),
    .y(slice1_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block channelizer_256/channelizer/poly_phase_filter/Subsystem2
module channelizer_256_subsystem2 (
  input ready_in,
  input [1-1:0] reset_in,
  input clk_1,
  input ce_1,
  output [1-1:0] valid_out,
  output [1-1:0] last_out,
  output [8-1:0] data_out
);
  wire [1-1:0] relational_op_net;
  wire [8-1:0] counter_op_net;
  wire fir_compiler_7_2_1_s_axis_config_tready_net;
  wire [1-1:0] logical_y_net;
  wire clk_net;
  wire ce_net;
  wire [1-1:0] inverter_op_net;
  wire [8-1:0] constant_op_net;
  wire [1-1:0] constant1_op_net;
  wire [1-1:0] delay_q_net;
  assign valid_out = inverter_op_net;
  assign last_out = relational_op_net;
  assign data_out = counter_op_net;
  assign fir_compiler_7_2_1_s_axis_config_tready_net = ready_in;
  assign logical_y_net = reset_in;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  sysgen_constant_39c35f37c7 constant (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant_op_net)
  );
  sysgen_constant_b7c50d0aca constant1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant1_op_net)
  );
  channelizer_256_xlcounter_free #(
    .core_name0("channelizer_256_c_counter_binary_v12_0_2"),
    .op_arith(`xlUnsigned),
    .op_width(8)
  )
  counter (
    .clr(1'b0),
    .rst(logical_y_net),
    .en(fir_compiler_7_2_1_s_axis_config_tready_net),
    .clk(clk_net),
    .ce(ce_net),
    .op(counter_op_net)
  );
  sysgen_delay_9d893c921a delay (
    .clr(1'b0),
    .d(constant1_op_net),
    .rst(logical_y_net),
    .en(relational_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay_q_net)
  );
  sysgen_inverter_692c4e9d5f inverter (
    .clr(1'b0),
    .ip(delay_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .op(inverter_op_net)
  );
  sysgen_relational_004edd55c3 relational (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .a(constant_op_net),
    .b(counter_op_net),
    .op(relational_op_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block channelizer_256/channelizer/poly_phase_filter/Subsystem3
module channelizer_256_subsystem3 (
  input ready,
  input [1-1:0] reset_in,
  input [1-1:0] valid,
  input clk_1,
  input ce_1,
  output [1-1:0] last_out
);
  wire [1-1:0] relational_op_net;
  wire fir_compiler_7_2_1_s_axis_data_tready_net;
  wire [1-1:0] logical_y_net_x0;
  wire [1-1:0] valid_in_net;
  wire clk_net;
  wire ce_net;
  wire [8-1:0] constant_op_net;
  wire [8-1:0] counter_op_net;
  wire [1-1:0] logical_y_net;
  assign last_out = relational_op_net;
  assign fir_compiler_7_2_1_s_axis_data_tready_net = ready;
  assign logical_y_net_x0 = reset_in;
  assign valid_in_net = valid;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  sysgen_constant_39c35f37c7 constant (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant_op_net)
  );
  channelizer_256_xlcounter_free #(
    .core_name0("channelizer_256_c_counter_binary_v12_0_2"),
    .op_arith(`xlUnsigned),
    .op_width(8)
  )
  counter (
    .clr(1'b0),
    .rst(logical_y_net_x0),
    .en(logical_y_net),
    .clk(clk_net),
    .ce(ce_net),
    .op(counter_op_net)
  );
  sysgen_logical_2d2e86ecb2 logical (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d0(fir_compiler_7_2_1_s_axis_data_tready_net),
    .d1(valid_in_net),
    .y(logical_y_net)
  );
  sysgen_relational_004edd55c3 relational (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .a(constant_op_net),
    .b(counter_op_net),
    .op(relational_op_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block channelizer_256/channelizer/poly_phase_filter
module channelizer_256_poly_phase_filter (
  input ready_out,
  input [1-1:0] valid_in,
  input [32-1:0] data_in,
  input [1-1:0] last_in,
  input [1-1:0] reset_in,
  input clk_1,
  input ce_1,
  output ready_in,
  output valid_out,
  output [32-1:0] data_out,
  output last_out
);
  wire fir_compiler_7_2_1_s_axis_data_tready_net;
  wire fir_compiler_7_2_1_m_axis_data_tvalid_net;
  wire [32-1:0] concat_y_net;
  wire fir_compiler_7_2_1_m_axis_data_tlast_net;
  wire ifft_fast_fourier_transform_8_1_s_axis_data_tready_net;
  wire [1-1:0] valid_in_net;
  wire [32-1:0] data_in_net;
  wire [1-1:0] last_in_net;
  wire [1-1:0] logical_y_net;
  wire clk_net;
  wire ce_net;
  wire [18-1:0] convert_dout_net;
  wire [18-1:0] convert1_dout_net;
  wire [34-1:0] fir_compiler_7_2_1_m_axis_data_tdata_path1_net;
  wire [34-1:0] fir_compiler_7_2_1_m_axis_data_tdata_path0_net;
  wire [1-1:0] inverter_op_net_x0;
  wire [1-1:0] relational_op_net;
  wire [8-1:0] counter_op_net;
  wire fir_compiler_7_2_1_s_axis_config_tready_net;
  wire [1-1:0] relational_op_net_x0;
  wire fir_compiler_7_2_1_event_s_data_tlast_missing_net;
  wire fir_compiler_7_2_1_event_s_data_tlast_unexpected_net;
  wire fir_compiler_7_2_1_event_s_config_tlast_missing_net;
  wire fir_compiler_7_2_1_event_s_config_tlast_unexpected_net;
  wire inverter_op_net;
  assign ready_in = fir_compiler_7_2_1_s_axis_data_tready_net;
  assign valid_out = fir_compiler_7_2_1_m_axis_data_tvalid_net;
  assign data_out = concat_y_net;
  assign last_out = fir_compiler_7_2_1_m_axis_data_tlast_net;
  assign ifft_fast_fourier_transform_8_1_s_axis_data_tready_net = ready_out;
  assign valid_in_net = valid_in;
  assign data_in_net = data_in;
  assign last_in_net = last_in;
  assign logical_y_net = reset_in;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  channelizer_256_subsystem subsystem_x4 (
    .in1(data_in_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .imag(convert_dout_net),
    .real_x0(convert1_dout_net)
  );
  channelizer_256_subsystem1 subsystem1 (
    .imag(fir_compiler_7_2_1_m_axis_data_tdata_path1_net),
    .real_x0(fir_compiler_7_2_1_m_axis_data_tdata_path0_net),
    .out1(concat_y_net)
  );
  channelizer_256_subsystem2 subsystem2 (
    .ready_in(fir_compiler_7_2_1_s_axis_config_tready_net),
    .reset_in(logical_y_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .valid_out(inverter_op_net_x0),
    .last_out(relational_op_net),
    .data_out(counter_op_net)
  );
  channelizer_256_subsystem3 subsystem3 (
    .ready(fir_compiler_7_2_1_s_axis_data_tready_net),
    .reset_in(logical_y_net),
    .valid(valid_in_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .last_out(relational_op_net_x0)
  );
  xlfir_compiler_573796d8d5d147c7c9fe715a25c3e2c7 fir_compiler_7_2_1 (
    .s_axis_data_tvalid(valid_in_net),
    .s_axis_data_tlast(relational_op_net_x0),
    .s_axis_data_tdata_path1(convert_dout_net),
    .s_axis_data_tdata_path0(convert1_dout_net),
    .s_axis_config_tvalid(inverter_op_net_x0),
    .s_axis_config_tlast(relational_op_net),
    .s_axis_config_tdata_fsel(counter_op_net),
    .m_axis_data_tready(ifft_fast_fourier_transform_8_1_s_axis_data_tready_net),
    .rst(inverter_op_net),
    .src_clk(clk_net),
    .src_ce(ce_net),
    .clk(clk_net),
    .ce(ce_net),
    .s_axis_data_tready(fir_compiler_7_2_1_s_axis_data_tready_net),
    .s_axis_config_tready(fir_compiler_7_2_1_s_axis_config_tready_net),
    .m_axis_data_tvalid(fir_compiler_7_2_1_m_axis_data_tvalid_net),
    .m_axis_data_tlast(fir_compiler_7_2_1_m_axis_data_tlast_net),
    .m_axis_data_tdata_path1(fir_compiler_7_2_1_m_axis_data_tdata_path1_net),
    .m_axis_data_tdata_path0(fir_compiler_7_2_1_m_axis_data_tdata_path0_net),
    .event_s_data_tlast_missing(fir_compiler_7_2_1_event_s_data_tlast_missing_net),
    .event_s_data_tlast_unexpected(fir_compiler_7_2_1_event_s_data_tlast_unexpected_net),
    .event_s_config_tlast_missing(fir_compiler_7_2_1_event_s_config_tlast_missing_net),
    .event_s_config_tlast_unexpected(fir_compiler_7_2_1_event_s_config_tlast_unexpected_net)
  );
  sysgen_inverter_692c4e9d5f inverter (
    .clr(1'b0),
    .ip(logical_y_net),
    .clk(clk_net),
    .ce(ce_net),
    .op(inverter_op_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block channelizer_256/channelizer/reset_register
module channelizer_256_reset_register (
  input [1-1:0] set_stb,
  input [8-1:0] set_addr,
  input clk_1,
  input ce_1,
  output [1-1:0] reset_out
);
  wire [1-1:0] delay_q_net;
  wire [1-1:0] set_stb_in_net;
  wire [8-1:0] set_addr_in_net;
  wire clk_net;
  wire ce_net;
  wire [1-1:0] constant_op_net;
  wire [2-1:0] counter_op_net;
  wire [1-1:0] relational1_op_net;
  wire [1-1:0] logical_y_net;
  wire [1-1:0] relational_op_net;
  wire [8-1:0] address_op_net;
  wire [2-1:0] address1_op_net;
  assign reset_out = delay_q_net;
  assign set_stb_in_net = set_stb;
  assign set_addr_in_net = set_addr;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  sysgen_constant_b7c50d0aca constant (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant_op_net)
  );
  channelizer_256_xlcounter_free #(
    .core_name0("channelizer_256_c_counter_binary_v12_0_3"),
    .op_arith(`xlUnsigned),
    .op_width(2)
  )
  counter (
    .clr(1'b0),
    .rst(relational1_op_net),
    .en(delay_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .op(counter_op_net)
  );
  sysgen_delay_9d893c921a delay (
    .clr(1'b0),
    .d(constant_op_net),
    .rst(relational1_op_net),
    .en(logical_y_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay_q_net)
  );
  sysgen_logical_2d2e86ecb2 logical (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d0(set_stb_in_net),
    .d1(relational_op_net),
    .y(logical_y_net)
  );
  sysgen_relational_004edd55c3 relational (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .a(set_addr_in_net),
    .b(address_op_net),
    .op(relational_op_net)
  );
  sysgen_relational_dfd2a4be8a relational1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .a(counter_op_net),
    .b(address1_op_net),
    .op(relational1_op_net)
  );
  sysgen_constant_9a49104451 address (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(address_op_net)
  );
  sysgen_constant_88effd842b address1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(address1_op_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block channelizer_256/channelizer
module channelizer_256_channelizer (
  input [1-1:0] ready_out,
  input [1-1:0] valid_in,
  input [32-1:0] data_in,
  input [1-1:0] last_in,
  input [1-1:0] reset_in,
  input [1-1:0] set_stb_in,
  input [8-1:0] set_addr_in,
  input clk_1,
  input ce_1,
  output ready_in,
  output valid_out,
  output [32-1:0] data_out,
  output last_out,
  output [1-1:0] reset_out
);
  wire fir_compiler_7_2_1_s_axis_data_tready_net;
  wire ifft_fast_fourier_transform_8_1_m_axis_data_tvalid_net;
  wire [32-1:0] concat_y_net_x0;
  wire axi_fifo_m_axis_tlast_net;
  wire [1-1:0] logical_y_net;
  wire [1-1:0] ready_out_net;
  wire [1-1:0] valid_in_net;
  wire [32-1:0] data_in_net;
  wire [1-1:0] last_in_net;
  wire [1-1:0] reset_in_net;
  wire [1-1:0] set_stb_in_net;
  wire [8-1:0] set_addr_in_net;
  wire clk_net;
  wire ce_net;
  wire ifft_fast_fourier_transform_8_1_s_axis_data_tready_net;
  wire [1-1:0] logical_y_net_x0;
  wire [32-1:0] dual_port_ram_doutb_net;
  wire [1-1:0] delay1_q_net;
  wire fir_compiler_7_2_1_m_axis_data_tvalid_net;
  wire [32-1:0] concat_y_net;
  wire fir_compiler_7_2_1_m_axis_data_tlast_net;
  wire [1-1:0] delay_q_net;
  wire axi_fifo_m_axis_tvalid_net;
  wire [8-1:0] axi_fifo_m_axis_tdata_net;
  wire axi_fifo_s_axis_tready_net;
  wire inverter_op_net;
  wire logical2_y_net;
  wire logical1_y_net;
  wire [8-1:0] constant_op_net;
  assign ready_in = fir_compiler_7_2_1_s_axis_data_tready_net;
  assign valid_out = ifft_fast_fourier_transform_8_1_m_axis_data_tvalid_net;
  assign data_out = concat_y_net_x0;
  assign last_out = axi_fifo_m_axis_tlast_net;
  assign reset_out = logical_y_net;
  assign ready_out_net = ready_out;
  assign valid_in_net = valid_in;
  assign data_in_net = data_in;
  assign last_in_net = last_in;
  assign reset_in_net = reset_in;
  assign set_stb_in_net = set_stb_in;
  assign set_addr_in_net = set_addr_in;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  channelizer_256_fft1 fft1 (
    .ready_out(ready_out_net),
    .valid_in(logical_y_net_x0),
    .data_in(dual_port_ram_doutb_net),
    .last_in(delay1_q_net),
    .reset_in(logical_y_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .ready_in(ifft_fast_fourier_transform_8_1_s_axis_data_tready_net),
    .valid_out(ifft_fast_fourier_transform_8_1_m_axis_data_tvalid_net),
    .data_out(concat_y_net_x0)
  );
  channelizer_256_frame_reverse frame_reverse (
    .ready_out(ifft_fast_fourier_transform_8_1_s_axis_data_tready_net),
    .valid_in(fir_compiler_7_2_1_m_axis_data_tvalid_net),
    .data_in(concat_y_net),
    .last_in(fir_compiler_7_2_1_m_axis_data_tlast_net),
    .reset_in(logical_y_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .valid_out(logical_y_net_x0),
    .data_out(dual_port_ram_doutb_net),
    .last_out(delay1_q_net)
  );
  channelizer_256_poly_phase_filter poly_phase_filter (
    .ready_out(ifft_fast_fourier_transform_8_1_s_axis_data_tready_net),
    .valid_in(valid_in_net),
    .data_in(data_in_net),
    .last_in(last_in_net),
    .reset_in(logical_y_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .ready_in(fir_compiler_7_2_1_s_axis_data_tready_net),
    .valid_out(fir_compiler_7_2_1_m_axis_data_tvalid_net),
    .data_out(concat_y_net),
    .last_out(fir_compiler_7_2_1_m_axis_data_tlast_net)
  );
  channelizer_256_reset_register reset_register (
    .set_stb(set_stb_in_net),
    .set_addr(set_addr_in_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .reset_out(delay_q_net)
  );
  channelizer_256_xlaxififogen #(
    .core_name0("channelizer_256_fifo_generator_v12_0_0"),
    .depth_bits(13),
    .has_aresetn(1),
    .tdata_width(8),
    .tdest_width(4),
    .tid_width(8),
    .tuser_width(4)
  )
  axi_fifo (
    .aresetn(inverter_op_net),
    .m_axis_tready(logical2_y_net),
    .s_axis_tvalid(logical1_y_net),
    .s_axis_tdata(constant_op_net),
    .s_axis_tlast(last_in_net),
    .s_aclk(clk_net),
    .ce(ce_net),
    .m_axis_tvalid(axi_fifo_m_axis_tvalid_net),
    .m_axis_tdata(axi_fifo_m_axis_tdata_net),
    .m_axis_tlast(axi_fifo_m_axis_tlast_net),
    .s_axis_tready(axi_fifo_s_axis_tready_net)
  );
  sysgen_constant_b12bb16a5f constant (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant_op_net)
  );
  sysgen_inverter_692c4e9d5f inverter (
    .clr(1'b0),
    .ip(logical_y_net),
    .clk(clk_net),
    .ce(ce_net),
    .op(inverter_op_net)
  );
  sysgen_logical_0bf9ba7bf4 logical (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d0(delay_q_net),
    .d1(reset_in_net),
    .y(logical_y_net)
  );
  sysgen_logical_2d2e86ecb2 logical1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d0(fir_compiler_7_2_1_s_axis_data_tready_net),
    .d1(valid_in_net),
    .y(logical1_y_net)
  );
  sysgen_logical_2d2e86ecb2 logical2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d0(ready_out_net),
    .d1(ifft_fast_fourier_transform_8_1_m_axis_data_tvalid_net),
    .y(logical2_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block channelizer_256/implementation_interface_in
module channelizer_256_implementation_interface_in (
  input ready_out,
  input [32-1:0] data_in,
  input [1-1:0] last_in,
  input [1-1:0] reset_in,
  input [8-1:0] set_addr_in,
  input [1-1:0] set_stb_in,
  input [1-1:0] valid_in
);
  wire fir_compiler_7_2_1_s_axis_data_tready_net;
  wire [32-1:0] data_in_net;
  wire [1-1:0] last_in_net;
  wire [1-1:0] reset_in_net;
  wire [8-1:0] set_addr_in_net;
  wire [1-1:0] set_stb_in_net;
  wire [1-1:0] valid_in_net;
  assign fir_compiler_7_2_1_s_axis_data_tready_net = ready_out;
  assign data_in_net = data_in;
  assign last_in_net = last_in;
  assign reset_in_net = reset_in;
  assign set_addr_in_net = set_addr_in;
  assign set_stb_in_net = set_stb_in;
  assign valid_in_net = valid_in;
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block channelizer_256/implementation_interface_out
module channelizer_256_implementation_interface_out (
  input valid_in,
  input [32-1:0] data_in,
  input last_in,
  input [1-1:0] reset_in,
  input [1-1:0] set_strb_in,
  input [8-1:0] set_addr_in,
  input [1-1:0] ready_out
);
  wire ifft_fast_fourier_transform_8_1_m_axis_data_tvalid_net;
  wire [32-1:0] concat_y_net;
  wire axi_fifo_m_axis_tlast_net;
  wire [1-1:0] logical_y_net;
  wire [1-1:0] set_stb_in_net;
  wire [8-1:0] set_addr_in_net;
  wire [1-1:0] ready_out_net;
  assign ifft_fast_fourier_transform_8_1_m_axis_data_tvalid_net = valid_in;
  assign concat_y_net = data_in;
  assign axi_fifo_m_axis_tlast_net = last_in;
  assign logical_y_net = reset_in;
  assign set_stb_in_net = set_strb_in;
  assign set_addr_in_net = set_addr_in;
  assign ready_out_net = ready_out;
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block channelizer_256_struct
module channelizer_256_struct (
  input [32-1:0] data_in,
  input [1-1:0] last_in,
  input [1-1:0] reset_in,
  input [8-1:0] set_addr_in,
  input [32-1:0] set_data_in,
  input [1-1:0] set_stb_in,
  input [1-1:0] valid_in,
  input [1-1:0] ready_out,
  input clk_1,
  input ce_1,
  output [1-1:0] ready_in,
  output [32-1:0] data_out,
  output [1-1:0] last_out,
  output [1-1:0] valid_out
);
  wire [1-1:0] axi_fifo_m_axis_tlast_net;
  wire [1-1:0] ready_out_net;
  wire [1-1:0] ifft_fast_fourier_transform_8_1_m_axis_data_tvalid_net;
  wire clk_net;
  wire ce_net;
  wire [1-1:0] logical_y_net;
  wire [32-1:0] data_in_net;
  wire [1-1:0] last_in_net;
  wire [1-1:0] fir_compiler_7_2_1_s_axis_data_tready_net;
  wire [1-1:0] reset_in_net;
  wire [8-1:0] set_addr_in_net;
  wire [32-1:0] set_data_in_net;
  wire [1-1:0] set_stb_in_net;
  wire [1-1:0] valid_in_net;
  wire [32-1:0] concat_y_net;
  assign data_in_net = data_in;
  assign last_in_net = last_in;
  assign ready_in = fir_compiler_7_2_1_s_axis_data_tready_net;
  assign reset_in_net = reset_in;
  assign set_addr_in_net = set_addr_in;
  assign set_data_in_net = set_data_in;
  assign set_stb_in_net = set_stb_in;
  assign valid_in_net = valid_in;
  assign data_out = concat_y_net;
  assign last_out = axi_fifo_m_axis_tlast_net;
  assign ready_out_net = ready_out;
  assign valid_out = ifft_fast_fourier_transform_8_1_m_axis_data_tvalid_net;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  channelizer_256_channelizer channelizer (
    .ready_out(ready_out_net),
    .valid_in(valid_in_net),
    .data_in(data_in_net),
    .last_in(last_in_net),
    .reset_in(reset_in_net),
    .set_stb_in(set_stb_in_net),
    .set_addr_in(set_addr_in_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .ready_in(fir_compiler_7_2_1_s_axis_data_tready_net),
    .valid_out(ifft_fast_fourier_transform_8_1_m_axis_data_tvalid_net),
    .data_out(concat_y_net),
    .last_out(axi_fifo_m_axis_tlast_net),
    .reset_out(logical_y_net)
  );
  channelizer_256_implementation_interface_in implementation_interface_in (
    .ready_out(fir_compiler_7_2_1_s_axis_data_tready_net),
    .data_in(data_in_net),
    .last_in(last_in_net),
    .reset_in(reset_in_net),
    .set_addr_in(set_addr_in_net),
    .set_stb_in(set_stb_in_net),
    .valid_in(valid_in_net)
  );
  channelizer_256_implementation_interface_out implementation_interface_out (
    .valid_in(ifft_fast_fourier_transform_8_1_m_axis_data_tvalid_net),
    .data_in(concat_y_net),
    .last_in(axi_fifo_m_axis_tlast_net),
    .reset_in(logical_y_net),
    .set_strb_in(set_stb_in_net),
    .set_addr_in(set_addr_in_net),
    .ready_out(ready_out_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block 
module channelizer_256_default_clock_driver (
  input channelizer_256_sysclk,
  input channelizer_256_sysce,
  input channelizer_256_sysclr,
  output channelizer_256_clk1,
  output channelizer_256_ce1
);
  xlclockdriver #(
    .period(1),
    .log_2_period(1)
  )
  clockdriver (
    .sysclk(channelizer_256_sysclk),
    .sysce(channelizer_256_sysce),
    .sysclr(channelizer_256_sysclr),
    .clk(channelizer_256_clk1),
    .ce(channelizer_256_ce1)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block 
(* core_generation_info = "channelizer_256,sysgen_core_2015_2,{,compilation=Synthesized Checkpoint,block_icon_display=Default,family=kintex7,part=xc7k410t,speed=-2,package=ffg900,synthesis_language=verilog,hdl_library=xil_defaultlib,synthesis_strategy=Vivado Synthesis Defaults,implementation_strategy=Vivado Implementation Defaults,testbench=0,interface_doc=1,ce_clr=0,clock_period=5,system_simulink_period=1,waveform_viewer=0,axilite_interface=0,ip_catalog_plugin=0,hwcosim_burst_mode=0,simulation_time=50000,axi_fifo=1,concat=2,constant=11,convert=4,counter=5,delay=4,dpram=1,fir_compiler_v7_2=1,inv=4,logical=12,reinterpret=18,relational=4,slice=16,xfft_v9_0=1,}" *)
module channelizer_256 (
  input [32-1:0] data_in,
  input [1-1:0] last_in,
  input [1-1:0] reset_in,
  input [8-1:0] set_addr_in,
  input [32-1:0] set_data_in,
  input [1-1:0] set_stb_in,
  input [1-1:0] valid_in,
  input [1-1:0] ready_out,
  input clk,
  output [1-1:0] ready_in,
  output [32-1:0] data_out,
  output [1-1:0] last_out,
  output [1-1:0] valid_out
);
  wire clk_1_net;
  wire ce_1_net;
  channelizer_256_default_clock_driver channelizer_256_default_clock_driver (
    .channelizer_256_sysclk(clk),
    .channelizer_256_sysce(1'b1),
    .channelizer_256_sysclr(1'b0),
    .channelizer_256_clk1(clk_1_net),
    .channelizer_256_ce1(ce_1_net)
  );
  channelizer_256_struct channelizer_256_struct (
    .data_in(data_in),
    .last_in(last_in),
    .reset_in(reset_in),
    .set_addr_in(set_addr_in),
    .set_data_in(set_data_in),
    .set_stb_in(set_stb_in),
    .valid_in(valid_in),
    .ready_out(ready_out),
    .clk_1(clk_1_net),
    .ce_1(ce_1_net),
    .ready_in(ready_in),
    .data_out(data_out),
    .last_out(last_out),
    .valid_out(valid_out)
  );
endmodule
