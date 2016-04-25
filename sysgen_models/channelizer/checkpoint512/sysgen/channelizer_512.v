`ifndef xlConvPkgIncluded
`include "conv_pkg.v"
`endif

`timescale 1 ns / 10 ps
// Generated from Simulink block channelizer_512/channelizer/fft1/Subsystem
module channelizer_512_subsystem_x0 (
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
  sysgen_reinterpret_e9bb866e6b reinterpret (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice_y_net),
    .output_port(reinterpret_output_port_net)
  );
  sysgen_reinterpret_e9bb866e6b reinterpret1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice1_y_net),
    .output_port(reinterpret1_output_port_net)
  );
  channelizer_512_xlslice #(
    .new_lsb(0),
    .new_msb(15),
    .x_width(32),
    .y_width(16)
  )
  slice (
    .x(dual_port_ram_doutb_net),
    .y(slice_y_net)
  );
  channelizer_512_xlslice #(
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
// Generated from Simulink block channelizer_512/channelizer/fft1/Subsystem1
module channelizer_512_subsystem1_x0 (
  input [26-1:0] imag,
  input [26-1:0] real_x0,
  input clk_1,
  input ce_1,
  output [32-1:0] out1
);
  wire [32-1:0] concat_y_net;
  wire [26-1:0] ifft_fast_fourier_transform_8_1_m_axis_data_tdata_xn_im_0_net;
  wire [26-1:0] ifft_fast_fourier_transform_8_1_m_axis_data_tdata_xn_re_0_net;
  wire clk_net;
  wire ce_net;
  wire [16-1:0] reinterpret2_output_port_net;
  wire [16-1:0] reinterpret1_output_port_net;
  wire [16-1:0] convert_dout_net;
  wire [16-1:0] convert2_dout_net;
  assign out1 = concat_y_net;
  assign ifft_fast_fourier_transform_8_1_m_axis_data_tdata_xn_im_0_net = imag;
  assign ifft_fast_fourier_transform_8_1_m_axis_data_tdata_xn_re_0_net = real_x0;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  sysgen_concat_a13243f10f concat (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .in0(reinterpret2_output_port_net),
    .in1(reinterpret1_output_port_net),
    .y(concat_y_net)
  );
  channelizer_512_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(15),
    .din_width(26),
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
  channelizer_512_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(15),
    .din_width(26),
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
  sysgen_reinterpret_3d8a917d29 reinterpret1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(convert2_dout_net),
    .output_port(reinterpret1_output_port_net)
  );
  sysgen_reinterpret_3d8a917d29 reinterpret2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(convert_dout_net),
    .output_port(reinterpret2_output_port_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block channelizer_512/channelizer/fft1
module channelizer_512_fft1 (
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
  wire [26-1:0] ifft_fast_fourier_transform_8_1_m_axis_data_tdata_xn_im_0_net;
  wire [26-1:0] ifft_fast_fourier_transform_8_1_m_axis_data_tdata_xn_re_0_net;
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
  channelizer_512_subsystem_x0 subsystem_x4 (
    .in1(dual_port_ram_doutb_net),
    .imag(reinterpret1_output_port_net),
    .real_x0(reinterpret_output_port_net)
  );
  channelizer_512_subsystem1_x0 subsystem1 (
    .imag(ifft_fast_fourier_transform_8_1_m_axis_data_tdata_xn_im_0_net),
    .real_x0(ifft_fast_fourier_transform_8_1_m_axis_data_tdata_xn_re_0_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .out1(concat_y_net)
  );
  sysgen_constant_99adba9c32 ifft (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(ifft_op_net)
  );
  xlfast_fourier_transform_6b5aa7edf1f6dd08250b04d840f6bbbc ifft_fast_fourier_transform_8_1 (
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
  sysgen_inverter_88d4f7a3f3 inverter (
    .clr(1'b0),
    .ip(logical_y_net),
    .clk(clk_net),
    .ce(ce_net),
    .op(inverter_op_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block channelizer_512/channelizer/frame_reverse
module channelizer_512_frame_reverse (
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
  wire [10-1:0] counter_op_net;
  wire [1-1:0] logical1_y_net;
  wire [10-1:0] counter2_op_net;
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
  sysgen_constant_a73b1fb775 constant (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant_op_net)
  );
  sysgen_constant_915e72fd48 constant1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant1_op_net)
  );
  sysgen_constant_99adba9c32 constant2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant2_op_net)
  );
  channelizer_512_xlcounter_free #(
    .core_name0("channelizer_512_c_counter_binary_v12_0_0"),
    .op_arith(`xlUnsigned),
    .op_width(10)
  )
  counter (
    .clr(1'b0),
    .rst(logical_y_net),
    .en(logical1_y_net),
    .clk(clk_net),
    .ce(ce_net),
    .op(counter_op_net)
  );
  channelizer_512_xlcounter_free #(
    .core_name0("channelizer_512_c_counter_binary_v12_0_1"),
    .op_arith(`xlUnsigned),
    .op_width(10)
  )
  counter2 (
    .clr(1'b0),
    .rst(logical_y_net),
    .en(logical1_y_net),
    .clk(clk_net),
    .ce(ce_net),
    .op(counter2_op_net)
  );
  sysgen_delay_c7ad5db0a4 delay (
    .clr(1'b0),
    .d(constant2_op_net),
    .rst(logical_y_net),
    .en(logical1_y_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay_q_net)
  );
  sysgen_delay_3f371878da delay1 (
    .clr(1'b0),
    .d(fir_compiler_7_2_1_m_axis_data_tlast_net),
    .rst(logical_y_net),
    .en(logical1_y_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay1_q_net)
  );
  channelizer_512_xldpram #(
    .c_address_width_a(10),
    .c_address_width_b(10),
    .c_width_a(32),
    .c_width_b(32),
    .core_name0("channelizer_512_blk_mem_gen_v8_2_0"),
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
  sysgen_logical_a89dba00a2 logical (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d0(delay_q_net),
    .d1(fir_compiler_7_2_1_m_axis_data_tvalid_net),
    .y(logical_y_net_x0)
  );
  sysgen_logical_a89dba00a2 logical1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d0(ifft_fast_fourier_transform_8_1_s_axis_data_tready_net),
    .d1(fir_compiler_7_2_1_m_axis_data_tvalid_net),
    .y(logical1_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block channelizer_512/channelizer/poly_phase_filter/Subsystem
module channelizer_512_subsystem (
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
  channelizer_512_xlconvert #(
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
  channelizer_512_xlconvert #(
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
  sysgen_reinterpret_e9bb866e6b reinterpret (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lower_y_net),
    .output_port(reinterpret_output_port_net)
  );
  sysgen_reinterpret_e9bb866e6b reinterpret3 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(upper_y_net),
    .output_port(reinterpret3_output_port_net)
  );
  channelizer_512_xlslice #(
    .new_lsb(0),
    .new_msb(15),
    .x_width(32),
    .y_width(16)
  )
  lower (
    .x(data_in_net),
    .y(lower_y_net)
  );
  channelizer_512_xlslice #(
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
// Generated from Simulink block channelizer_512/channelizer/poly_phase_filter/Subsystem1
module channelizer_512_subsystem1 (
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
  sysgen_concat_a13243f10f concat (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .in0(slice1_y_net),
    .in1(slice_y_net),
    .y(concat_y_net)
  );
  sysgen_reinterpret_b8cde866f7 reinterpret1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(fir_compiler_7_2_1_m_axis_data_tdata_path0_net),
    .output_port(reinterpret1_output_port_net)
  );
  sysgen_reinterpret_b8cde866f7 reinterpret2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(fir_compiler_7_2_1_m_axis_data_tdata_path1_net),
    .output_port(reinterpret2_output_port_net)
  );
  channelizer_512_xlslice #(
    .new_lsb(15),
    .new_msb(30),
    .x_width(34),
    .y_width(16)
  )
  slice (
    .x(reinterpret1_output_port_net),
    .y(slice_y_net)
  );
  channelizer_512_xlslice #(
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
// Generated from Simulink block channelizer_512/channelizer/poly_phase_filter/Subsystem2
module channelizer_512_subsystem2 (
  input ready_in,
  input [1-1:0] reset_in,
  input clk_1,
  input ce_1,
  output [1-1:0] valid_out,
  output [1-1:0] last_out,
  output [9-1:0] data_out
);
  wire [1-1:0] relational_op_net;
  wire [9-1:0] counter_op_net;
  wire fir_compiler_7_2_1_s_axis_config_tready_net;
  wire [1-1:0] logical_y_net;
  wire clk_net;
  wire ce_net;
  wire [1-1:0] inverter_op_net;
  wire [9-1:0] constant_op_net;
  wire [1-1:0] constant1_op_net;
  wire [1-1:0] delay_q_net;
  assign valid_out = inverter_op_net;
  assign last_out = relational_op_net;
  assign data_out = counter_op_net;
  assign fir_compiler_7_2_1_s_axis_config_tready_net = ready_in;
  assign logical_y_net = reset_in;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  sysgen_constant_9243789fee constant (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant_op_net)
  );
  sysgen_constant_99adba9c32 constant1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant1_op_net)
  );
  channelizer_512_xlcounter_free #(
    .core_name0("channelizer_512_c_counter_binary_v12_0_2"),
    .op_arith(`xlUnsigned),
    .op_width(9)
  )
  counter (
    .clr(1'b0),
    .rst(logical_y_net),
    .en(fir_compiler_7_2_1_s_axis_config_tready_net),
    .clk(clk_net),
    .ce(ce_net),
    .op(counter_op_net)
  );
  sysgen_delay_3f371878da delay (
    .clr(1'b0),
    .d(constant1_op_net),
    .rst(logical_y_net),
    .en(relational_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay_q_net)
  );
  sysgen_inverter_88d4f7a3f3 inverter (
    .clr(1'b0),
    .ip(delay_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .op(inverter_op_net)
  );
  sysgen_relational_9415812ce4 relational (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .a(constant_op_net),
    .b(counter_op_net),
    .op(relational_op_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block channelizer_512/channelizer/poly_phase_filter/Subsystem3
module channelizer_512_subsystem3 (
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
  wire [9-1:0] constant_op_net;
  wire [9-1:0] counter_op_net;
  wire [1-1:0] logical_y_net;
  assign last_out = relational_op_net;
  assign fir_compiler_7_2_1_s_axis_data_tready_net = ready;
  assign logical_y_net_x0 = reset_in;
  assign valid_in_net = valid;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  sysgen_constant_9243789fee constant (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant_op_net)
  );
  channelizer_512_xlcounter_free #(
    .core_name0("channelizer_512_c_counter_binary_v12_0_2"),
    .op_arith(`xlUnsigned),
    .op_width(9)
  )
  counter (
    .clr(1'b0),
    .rst(logical_y_net_x0),
    .en(logical_y_net),
    .clk(clk_net),
    .ce(ce_net),
    .op(counter_op_net)
  );
  sysgen_logical_a89dba00a2 logical (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d0(fir_compiler_7_2_1_s_axis_data_tready_net),
    .d1(valid_in_net),
    .y(logical_y_net)
  );
  sysgen_relational_9415812ce4 relational (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .a(constant_op_net),
    .b(counter_op_net),
    .op(relational_op_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block channelizer_512/channelizer/poly_phase_filter
module channelizer_512_poly_phase_filter (
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
  wire [9-1:0] counter_op_net;
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
  channelizer_512_subsystem subsystem_x4 (
    .in1(data_in_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .imag(convert_dout_net),
    .real_x0(convert1_dout_net)
  );
  channelizer_512_subsystem1 subsystem1 (
    .imag(fir_compiler_7_2_1_m_axis_data_tdata_path1_net),
    .real_x0(fir_compiler_7_2_1_m_axis_data_tdata_path0_net),
    .out1(concat_y_net)
  );
  channelizer_512_subsystem2 subsystem2 (
    .ready_in(fir_compiler_7_2_1_s_axis_config_tready_net),
    .reset_in(logical_y_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .valid_out(inverter_op_net_x0),
    .last_out(relational_op_net),
    .data_out(counter_op_net)
  );
  channelizer_512_subsystem3 subsystem3 (
    .ready(fir_compiler_7_2_1_s_axis_data_tready_net),
    .reset_in(logical_y_net),
    .valid(valid_in_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .last_out(relational_op_net_x0)
  );
  xlfir_compiler_6f8d906e96999d75e577b5c51b38d58d fir_compiler_7_2_1 (
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
  sysgen_inverter_88d4f7a3f3 inverter (
    .clr(1'b0),
    .ip(logical_y_net),
    .clk(clk_net),
    .ce(ce_net),
    .op(inverter_op_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block channelizer_512/channelizer/reset_register
module channelizer_512_reset_register (
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
  sysgen_constant_99adba9c32 constant (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant_op_net)
  );
  channelizer_512_xlcounter_free #(
    .core_name0("channelizer_512_c_counter_binary_v12_0_3"),
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
  sysgen_delay_3f371878da delay (
    .clr(1'b0),
    .d(constant_op_net),
    .rst(relational1_op_net),
    .en(logical_y_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay_q_net)
  );
  sysgen_logical_a89dba00a2 logical (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d0(set_stb_in_net),
    .d1(relational_op_net),
    .y(logical_y_net)
  );
  sysgen_relational_474ec871e5 relational (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .a(set_addr_in_net),
    .b(address_op_net),
    .op(relational_op_net)
  );
  sysgen_relational_80afcc882d relational1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .a(counter_op_net),
    .b(address1_op_net),
    .op(relational1_op_net)
  );
  sysgen_constant_870c02eef2 address (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(address_op_net)
  );
  sysgen_constant_1385bcdaec address1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(address1_op_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block channelizer_512/channelizer
module channelizer_512_channelizer (
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
  channelizer_512_fft1 fft1 (
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
  channelizer_512_frame_reverse frame_reverse (
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
  channelizer_512_poly_phase_filter poly_phase_filter (
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
  channelizer_512_reset_register reset_register (
    .set_stb(set_stb_in_net),
    .set_addr(set_addr_in_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .reset_out(delay_q_net)
  );
  channelizer_512_xlaxififogen #(
    .core_name0("channelizer_512_fifo_generator_v12_0_0"),
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
  sysgen_constant_3aa05035c7 constant (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant_op_net)
  );
  sysgen_inverter_88d4f7a3f3 inverter (
    .clr(1'b0),
    .ip(logical_y_net),
    .clk(clk_net),
    .ce(ce_net),
    .op(inverter_op_net)
  );
  sysgen_logical_0c8e0b09f2 logical (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d0(delay_q_net),
    .d1(reset_in_net),
    .y(logical_y_net)
  );
  sysgen_logical_a89dba00a2 logical1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d0(fir_compiler_7_2_1_s_axis_data_tready_net),
    .d1(valid_in_net),
    .y(logical1_y_net)
  );
  sysgen_logical_a89dba00a2 logical2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d0(ready_out_net),
    .d1(ifft_fast_fourier_transform_8_1_m_axis_data_tvalid_net),
    .y(logical2_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block channelizer_512/implementation_interface_in
module channelizer_512_implementation_interface_in (
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
// Generated from Simulink block channelizer_512/implementation_interface_out
module channelizer_512_implementation_interface_out (
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
// Generated from Simulink block channelizer_512_struct
module channelizer_512_struct (
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
  channelizer_512_channelizer channelizer (
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
  channelizer_512_implementation_interface_in implementation_interface_in (
    .ready_out(fir_compiler_7_2_1_s_axis_data_tready_net),
    .data_in(data_in_net),
    .last_in(last_in_net),
    .reset_in(reset_in_net),
    .set_addr_in(set_addr_in_net),
    .set_stb_in(set_stb_in_net),
    .valid_in(valid_in_net)
  );
  channelizer_512_implementation_interface_out implementation_interface_out (
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
module channelizer_512_default_clock_driver (
  input channelizer_512_sysclk,
  input channelizer_512_sysce,
  input channelizer_512_sysclr,
  output channelizer_512_clk1,
  output channelizer_512_ce1
);
  xlclockdriver #(
    .period(1),
    .log_2_period(1)
  )
  clockdriver (
    .sysclk(channelizer_512_sysclk),
    .sysce(channelizer_512_sysce),
    .sysclr(channelizer_512_sysclr),
    .clk(channelizer_512_clk1),
    .ce(channelizer_512_ce1)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block 
(* core_generation_info = "channelizer_512,sysgen_core_2015_2,{,compilation=Synthesized Checkpoint,block_icon_display=Default,family=kintex7,part=xc7k410t,speed=-2,package=ffg900,synthesis_language=verilog,hdl_library=xil_defaultlib,synthesis_strategy=Vivado Synthesis Defaults,implementation_strategy=Vivado Implementation Defaults,testbench=0,interface_doc=1,ce_clr=0,clock_period=5,system_simulink_period=1,waveform_viewer=0,axilite_interface=0,ip_catalog_plugin=0,hwcosim_burst_mode=0,simulation_time=50000,axi_fifo=1,concat=2,constant=11,convert=4,counter=5,delay=4,dpram=1,fir_compiler_v7_2=1,inv=4,logical=12,reinterpret=18,relational=4,slice=16,xfft_v9_0=1,}" *)
module channelizer_512 (
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
  channelizer_512_default_clock_driver channelizer_512_default_clock_driver (
    .channelizer_512_sysclk(clk),
    .channelizer_512_sysce(1'b1),
    .channelizer_512_sysclr(1'b0),
    .channelizer_512_clk1(clk_1_net),
    .channelizer_512_ce1(ce_1_net)
  );
  channelizer_512_struct channelizer_512_struct (
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
