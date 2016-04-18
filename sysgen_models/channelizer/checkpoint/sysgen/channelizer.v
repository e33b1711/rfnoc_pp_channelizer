`ifndef xlConvPkgIncluded
`include "conv_pkg.v"
`endif

`timescale 1 ns / 10 ps
// Generated from Simulink block channelizer/fft1/Subsystem
module channelizer_subsystem_x0 (
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
  sysgen_reinterpret_ad93f43143 reinterpret (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice_y_net),
    .output_port(reinterpret_output_port_net)
  );
  sysgen_reinterpret_ad93f43143 reinterpret1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(slice1_y_net),
    .output_port(reinterpret1_output_port_net)
  );
  channelizer_xlslice #(
    .new_lsb(0),
    .new_msb(15),
    .x_width(32),
    .y_width(16)
  )
  slice (
    .x(dual_port_ram_doutb_net),
    .y(slice_y_net)
  );
  channelizer_xlslice #(
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
// Generated from Simulink block channelizer/fft1/Subsystem1
module channelizer_subsystem1_x0 (
  input [21-1:0] imag,
  input [21-1:0] real_x0,
  input clk_1,
  input ce_1,
  output [32-1:0] out1
);
  wire [32-1:0] concat_y_net;
  wire [21-1:0] ifft_fast_fourier_transform_8_1_m_axis_data_tdata_xn_im_0_net;
  wire [21-1:0] ifft_fast_fourier_transform_8_1_m_axis_data_tdata_xn_re_0_net;
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
  sysgen_concat_c4ee67c59a concat (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .in0(reinterpret2_output_port_net),
    .in1(reinterpret1_output_port_net),
    .y(concat_y_net)
  );
  channelizer_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(15),
    .din_width(21),
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
  channelizer_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(15),
    .din_width(21),
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
  sysgen_reinterpret_af1a0b71e1 reinterpret1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(convert2_dout_net),
    .output_port(reinterpret1_output_port_net)
  );
  sysgen_reinterpret_af1a0b71e1 reinterpret2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(convert_dout_net),
    .output_port(reinterpret2_output_port_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block channelizer/fft1
module channelizer_fft1 (
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
  wire [1-1:0] logical_y_net;
  wire [32-1:0] dual_port_ram_doutb_net;
  wire [1-1:0] delay1_q_net;
  wire [1-1:0] reset_in_net;
  wire clk_net;
  wire ce_net;
  wire [16-1:0] reinterpret1_output_port_net;
  wire [16-1:0] reinterpret_output_port_net;
  wire [21-1:0] ifft_fast_fourier_transform_8_1_m_axis_data_tdata_xn_im_0_net;
  wire [21-1:0] ifft_fast_fourier_transform_8_1_m_axis_data_tdata_xn_re_0_net;
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
  assign logical_y_net = valid_in;
  assign dual_port_ram_doutb_net = data_in;
  assign delay1_q_net = last_in;
  assign reset_in_net = reset_in;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  channelizer_subsystem_x0 subsystem_x4 (
    .in1(dual_port_ram_doutb_net),
    .imag(reinterpret1_output_port_net),
    .real_x0(reinterpret_output_port_net)
  );
  channelizer_subsystem1_x0 subsystem1 (
    .imag(ifft_fast_fourier_transform_8_1_m_axis_data_tdata_xn_im_0_net),
    .real_x0(ifft_fast_fourier_transform_8_1_m_axis_data_tdata_xn_re_0_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .out1(concat_y_net)
  );
  sysgen_constant_fa8d4b3e6d ifft (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(ifft_op_net)
  );
  xlfast_fourier_transform_c87919ddd6bfbf81b10158bf539068dc ifft_fast_fourier_transform_8_1 (
    .s_axis_config_tdata_fwd_inv(ifft_op_net),
    .s_axis_config_tvalid(ifft_fast_fourier_transform_8_1_s_axis_config_tready_net),
    .s_axis_data_tdata_xn_im_0(reinterpret1_output_port_net),
    .s_axis_data_tdata_xn_re_0(reinterpret_output_port_net),
    .s_axis_data_tvalid(logical_y_net),
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
  sysgen_inverter_dea83a2b38 inverter (
    .clr(1'b0),
    .ip(reset_in_net),
    .clk(clk_net),
    .ce(ce_net),
    .op(inverter_op_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block channelizer/frame_reverse
module channelizer_frame_reverse (
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
  wire [1-1:0] logical_y_net;
  wire [32-1:0] dual_port_ram_doutb_net;
  wire [1-1:0] delay1_q_net;
  wire ifft_fast_fourier_transform_8_1_s_axis_data_tready_net;
  wire fir_compiler_7_2_1_m_axis_data_tvalid_net;
  wire [32-1:0] concat_y_net;
  wire fir_compiler_7_2_1_m_axis_data_tlast_net;
  wire [1-1:0] reset_in_net;
  wire clk_net;
  wire [32-1:0] constant_op_net;
  wire [1-1:0] constant2_op_net;
  wire [5-1:0] counter_op_net;
  wire [1-1:0] logical1_y_net;
  wire [5-1:0] counter2_op_net;
  wire [1-1:0] delay_q_net;
  wire [32-1:0] dual_port_ram_douta_net;
  assign valid_out = logical_y_net;
  assign data_out = dual_port_ram_doutb_net;
  assign last_out = delay1_q_net;
  assign ifft_fast_fourier_transform_8_1_s_axis_data_tready_net = ready_out;
  assign fir_compiler_7_2_1_m_axis_data_tvalid_net = valid_in;
  assign concat_y_net = data_in;
  assign fir_compiler_7_2_1_m_axis_data_tlast_net = last_in;
  assign reset_in_net = reset_in;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  sysgen_constant_ff57ff80b6 constant (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant_op_net)
  );
  sysgen_constant_9b3be16c34 constant1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant1_op_net)
  );
  sysgen_constant_fa8d4b3e6d constant2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant2_op_net)
  );
  channelizer_xlcounter_free #(
    .core_name0("channelizer_c_counter_binary_v12_0_0"),
    .op_arith(`xlUnsigned),
    .op_width(5)
  )
  counter (
    .clr(1'b0),
    .rst(reset_in_net),
    .en(logical1_y_net),
    .clk(clk_net),
    .ce(ce_net),
    .op(counter_op_net)
  );
  channelizer_xlcounter_free #(
    .core_name0("channelizer_c_counter_binary_v12_0_1"),
    .op_arith(`xlUnsigned),
    .op_width(5)
  )
  counter2 (
    .clr(1'b0),
    .rst(reset_in_net),
    .en(logical1_y_net),
    .clk(clk_net),
    .ce(ce_net),
    .op(counter2_op_net)
  );
  sysgen_delay_2640a39ee9 delay (
    .clr(1'b0),
    .d(constant2_op_net),
    .rst(reset_in_net),
    .en(logical1_y_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay_q_net)
  );
  sysgen_delay_52cccd8896 delay1 (
    .clr(1'b0),
    .d(fir_compiler_7_2_1_m_axis_data_tlast_net),
    .rst(reset_in_net),
    .en(logical1_y_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay1_q_net)
  );
  channelizer_xldpram #(
    .c_address_width_a(5),
    .c_address_width_b(5),
    .c_width_a(32),
    .c_width_b(32),
    .core_name0("channelizer_blk_mem_gen_v8_2_0"),
    .latency(1)
  )
  dual_port_ram (
    .addra(counter_op_net),
    .dina(concat_y_net),
    .wea(logical1_y_net),
    .addrb(counter2_op_net),
    .dinb(constant_op_net),
    .web(constant1_op_net),
    .rsta(reset_in_net),
    .rstb(reset_in_net),
    .ena(logical1_y_net),
    .enb(logical1_y_net),
    .a_clk(clk_net),
    .a_ce(ce_net),
    .b_clk(clk_net),
    .b_ce(ce_net),
    .douta(dual_port_ram_douta_net),
    .doutb(dual_port_ram_doutb_net)
  );
  sysgen_logical_f9d74a72d1 logical (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d0(delay_q_net),
    .d1(fir_compiler_7_2_1_m_axis_data_tvalid_net),
    .y(logical_y_net)
  );
  sysgen_logical_f9d74a72d1 logical1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d0(ifft_fast_fourier_transform_8_1_s_axis_data_tready_net),
    .d1(fir_compiler_7_2_1_m_axis_data_tvalid_net),
    .y(logical1_y_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block channelizer/last_handler
module channelizer_last_handler (
  input [1-1:0] ready_out,
  input valid_in,
  input [32-1:0] data_in,
  input [1-1:0] reset_in,
  input clk_1,
  input ce_1,
  output [1-1:0] last_out
);
  wire [1-1:0] relational_op_net;
  wire [1-1:0] ready_out_net;
  wire ifft_fast_fourier_transform_8_1_m_axis_data_tvalid_net;
  wire [32-1:0] concat_y_net;
  wire [1-1:0] reset_in_net;
  wire clk_net;
  wire ce_net;
  wire [10-1:0] constant_op_net;
  wire [10-1:0] counter_op_net;
  wire [1-1:0] logical_y_net;
  assign last_out = relational_op_net;
  assign ready_out_net = ready_out;
  assign ifft_fast_fourier_transform_8_1_m_axis_data_tvalid_net = valid_in;
  assign concat_y_net = data_in;
  assign reset_in_net = reset_in;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  sysgen_constant_9ceded7773 constant (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant_op_net)
  );
  channelizer_xlcounter_free #(
    .core_name0("channelizer_c_counter_binary_v12_0_2"),
    .op_arith(`xlUnsigned),
    .op_width(10)
  )
  counter (
    .clr(1'b0),
    .rst(reset_in_net),
    .en(logical_y_net),
    .clk(clk_net),
    .ce(ce_net),
    .op(counter_op_net)
  );
  sysgen_logical_f9d74a72d1 logical (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d0(ifft_fast_fourier_transform_8_1_m_axis_data_tvalid_net),
    .d1(ready_out_net),
    .y(logical_y_net)
  );
  sysgen_relational_765ebec234 relational (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .a(constant_op_net),
    .b(counter_op_net),
    .op(relational_op_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block channelizer/poly_phase_filter/Subsystem
module channelizer_subsystem (
  input [32-1:0] in1,
  input clk_1,
  input ce_1,
  output [18-1:0] imag,
  output [18-1:0] real_x0
);
  wire [16-1:0] reinterpret3_output_port_net;
  wire [18-1:0] convert_dout_net;
  wire [18-1:0] convert1_dout_net;
  wire [32-1:0] data_in_net;
  wire clk_net;
  wire ce_net;
  wire [16-1:0] reinterpret_output_port_net;
  wire [16-1:0] lower_y_net;
  wire [16-1:0] upper_y_net;
  assign imag = convert_dout_net;
  assign real_x0 = convert1_dout_net;
  assign data_in_net = in1;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  channelizer_xlconvert #(
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
  channelizer_xlconvert #(
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
  sysgen_reinterpret_ad93f43143 reinterpret (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(lower_y_net),
    .output_port(reinterpret_output_port_net)
  );
  sysgen_reinterpret_ad93f43143 reinterpret3 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(upper_y_net),
    .output_port(reinterpret3_output_port_net)
  );
  channelizer_xlslice #(
    .new_lsb(0),
    .new_msb(15),
    .x_width(32),
    .y_width(16)
  )
  lower (
    .x(data_in_net),
    .y(lower_y_net)
  );
  channelizer_xlslice #(
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
// Generated from Simulink block channelizer/poly_phase_filter/Subsystem1
module channelizer_subsystem1 (
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
  sysgen_concat_c4ee67c59a concat (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .in0(slice1_y_net),
    .in1(slice_y_net),
    .y(concat_y_net)
  );
  sysgen_reinterpret_4bd3487388 reinterpret1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(fir_compiler_7_2_1_m_axis_data_tdata_path0_net),
    .output_port(reinterpret1_output_port_net)
  );
  sysgen_reinterpret_4bd3487388 reinterpret2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(fir_compiler_7_2_1_m_axis_data_tdata_path1_net),
    .output_port(reinterpret2_output_port_net)
  );
  channelizer_xlslice #(
    .new_lsb(15),
    .new_msb(30),
    .x_width(34),
    .y_width(16)
  )
  slice (
    .x(reinterpret1_output_port_net),
    .y(slice_y_net)
  );
  channelizer_xlslice #(
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
// Generated from Simulink block channelizer/poly_phase_filter/Subsystem2
module channelizer_subsystem2 (
  input ready_in,
  input [1-1:0] reset_in,
  input clk_1,
  input ce_1,
  output [1-1:0] valid_out,
  output [1-1:0] last_out,
  output [4-1:0] data_out
);
  wire [1-1:0] inverter_op_net;
  wire [1-1:0] relational_op_net;
  wire [4-1:0] counter_op_net;
  wire fir_compiler_7_2_1_s_axis_config_tready_net;
  wire [1-1:0] reset_in_net;
  wire clk_net;
  wire ce_net;
  wire [4-1:0] constant_op_net;
  wire [1-1:0] constant1_op_net;
  wire [1-1:0] delay_q_net;
  assign valid_out = inverter_op_net;
  assign last_out = relational_op_net;
  assign data_out = counter_op_net;
  assign fir_compiler_7_2_1_s_axis_config_tready_net = ready_in;
  assign reset_in_net = reset_in;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  sysgen_constant_1aff05159a constant (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant_op_net)
  );
  sysgen_constant_fa8d4b3e6d constant1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant1_op_net)
  );
  channelizer_xlcounter_free #(
    .core_name0("channelizer_c_counter_binary_v12_0_3"),
    .op_arith(`xlUnsigned),
    .op_width(4)
  )
  counter (
    .clr(1'b0),
    .rst(reset_in_net),
    .en(fir_compiler_7_2_1_s_axis_config_tready_net),
    .clk(clk_net),
    .ce(ce_net),
    .op(counter_op_net)
  );
  sysgen_delay_52cccd8896 delay (
    .clr(1'b0),
    .d(constant1_op_net),
    .rst(reset_in_net),
    .en(relational_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay_q_net)
  );
  sysgen_inverter_dea83a2b38 inverter (
    .clr(1'b0),
    .ip(delay_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .op(inverter_op_net)
  );
  sysgen_relational_f303c211e7 relational (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .a(constant_op_net),
    .b(counter_op_net),
    .op(relational_op_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block channelizer/poly_phase_filter/Subsystem3
module channelizer_subsystem3 (
  input ready,
  input [1-1:0] reset_in,
  input [1-1:0] valid,
  input clk_1,
  input ce_1,
  output [1-1:0] last_out
);
  wire [1-1:0] relational_op_net;
  wire fir_compiler_7_2_1_s_axis_data_tready_net;
  wire [1-1:0] reset_in_net;
  wire [1-1:0] valid_in_net;
  wire clk_net;
  wire ce_net;
  wire [4-1:0] constant_op_net;
  wire [4-1:0] counter_op_net;
  wire [1-1:0] logical_y_net;
  assign last_out = relational_op_net;
  assign fir_compiler_7_2_1_s_axis_data_tready_net = ready;
  assign reset_in_net = reset_in;
  assign valid_in_net = valid;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  sysgen_constant_1aff05159a constant (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant_op_net)
  );
  channelizer_xlcounter_free #(
    .core_name0("channelizer_c_counter_binary_v12_0_3"),
    .op_arith(`xlUnsigned),
    .op_width(4)
  )
  counter (
    .clr(1'b0),
    .rst(reset_in_net),
    .en(logical_y_net),
    .clk(clk_net),
    .ce(ce_net),
    .op(counter_op_net)
  );
  sysgen_logical_f9d74a72d1 logical (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .d0(fir_compiler_7_2_1_s_axis_data_tready_net),
    .d1(valid_in_net),
    .y(logical_y_net)
  );
  sysgen_relational_f303c211e7 relational (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .a(constant_op_net),
    .b(counter_op_net),
    .op(relational_op_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block channelizer/poly_phase_filter
module channelizer_poly_phase_filter (
  input ready_out,
  input [1-1:0] valid_in,
  input [32-1:0] data_in,
  input [1-1:0] reset_in,
  input clk_1,
  input ce_1,
  output ready_in,
  output valid_out,
  output [32-1:0] data_out,
  output last_out
);
  wire fir_compiler_7_2_1_event_s_data_tlast_missing_net;
  wire fir_compiler_7_2_1_event_s_data_tlast_unexpected_net;
  wire fir_compiler_7_2_1_event_s_config_tlast_missing_net;
  wire fir_compiler_7_2_1_event_s_config_tlast_unexpected_net;
  wire inverter_op_net;
  wire fir_compiler_7_2_1_s_axis_data_tready_net;
  wire fir_compiler_7_2_1_m_axis_data_tvalid_net;
  wire [32-1:0] concat_y_net;
  wire fir_compiler_7_2_1_m_axis_data_tlast_net;
  wire ifft_fast_fourier_transform_8_1_s_axis_data_tready_net;
  wire [1-1:0] valid_in_net;
  wire [32-1:0] data_in_net;
  wire [1-1:0] reset_in_net;
  wire clk_net;
  wire ce_net;
  wire [18-1:0] convert_dout_net;
  wire [18-1:0] convert1_dout_net;
  wire [34-1:0] fir_compiler_7_2_1_m_axis_data_tdata_path1_net;
  wire [34-1:0] fir_compiler_7_2_1_m_axis_data_tdata_path0_net;
  wire [1-1:0] inverter_op_net_x0;
  wire [1-1:0] relational_op_net;
  wire [4-1:0] counter_op_net;
  wire fir_compiler_7_2_1_s_axis_config_tready_net;
  wire [1-1:0] relational_op_net_x0;
  assign ready_in = fir_compiler_7_2_1_s_axis_data_tready_net;
  assign valid_out = fir_compiler_7_2_1_m_axis_data_tvalid_net;
  assign data_out = concat_y_net;
  assign last_out = fir_compiler_7_2_1_m_axis_data_tlast_net;
  assign ifft_fast_fourier_transform_8_1_s_axis_data_tready_net = ready_out;
  assign valid_in_net = valid_in;
  assign data_in_net = data_in;
  assign reset_in_net = reset_in;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  channelizer_subsystem subsystem_x4 (
    .in1(data_in_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .imag(convert_dout_net),
    .real_x0(convert1_dout_net)
  );
  channelizer_subsystem1 subsystem1 (
    .imag(fir_compiler_7_2_1_m_axis_data_tdata_path1_net),
    .real_x0(fir_compiler_7_2_1_m_axis_data_tdata_path0_net),
    .out1(concat_y_net)
  );
  channelizer_subsystem2 subsystem2 (
    .ready_in(fir_compiler_7_2_1_s_axis_config_tready_net),
    .reset_in(reset_in_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .valid_out(inverter_op_net_x0),
    .last_out(relational_op_net),
    .data_out(counter_op_net)
  );
  channelizer_subsystem3 subsystem3 (
    .ready(fir_compiler_7_2_1_s_axis_data_tready_net),
    .reset_in(reset_in_net),
    .valid(valid_in_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .last_out(relational_op_net_x0)
  );
  xlfir_compiler_19490f93cbd7e22fee0db5c2ec90c7a6 fir_compiler_7_2_1 (
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
  sysgen_inverter_dea83a2b38 inverter (
    .clr(1'b0),
    .ip(reset_in_net),
    .clk(clk_net),
    .ce(ce_net),
    .op(inverter_op_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block channelizer
module channelizer_channelizer (
  input [1-1:0] ready_out,
  input [1-1:0] valid_in,
  input [32-1:0] data_in,
  input [1-1:0] reset_in,
  input clk_1,
  input ce_1,
  output ready_in,
  output valid_out,
  output [32-1:0] data_out,
  output [1-1:0] last_out
);
  wire fir_compiler_7_2_1_s_axis_data_tready_net;
  wire ifft_fast_fourier_transform_8_1_m_axis_data_tvalid_net;
  wire [32-1:0] concat_y_net;
  wire [1-1:0] relational_op_net;
  wire [1-1:0] ready_out_net;
  wire [1-1:0] valid_in_net;
  wire [32-1:0] data_in_net;
  wire [1-1:0] reset_in_net;
  wire clk_net;
  wire ce_net;
  wire ifft_fast_fourier_transform_8_1_s_axis_data_tready_net;
  wire [1-1:0] logical_y_net;
  wire [32-1:0] dual_port_ram_doutb_net;
  wire [1-1:0] delay1_q_net;
  wire fir_compiler_7_2_1_m_axis_data_tvalid_net;
  wire [32-1:0] concat_y_net_x0;
  wire fir_compiler_7_2_1_m_axis_data_tlast_net;
  assign ready_in = fir_compiler_7_2_1_s_axis_data_tready_net;
  assign valid_out = ifft_fast_fourier_transform_8_1_m_axis_data_tvalid_net;
  assign data_out = concat_y_net;
  assign last_out = relational_op_net;
  assign ready_out_net = ready_out;
  assign valid_in_net = valid_in;
  assign data_in_net = data_in;
  assign reset_in_net = reset_in;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  channelizer_fft1 fft1 (
    .ready_out(ready_out_net),
    .valid_in(logical_y_net),
    .data_in(dual_port_ram_doutb_net),
    .last_in(delay1_q_net),
    .reset_in(reset_in_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .ready_in(ifft_fast_fourier_transform_8_1_s_axis_data_tready_net),
    .valid_out(ifft_fast_fourier_transform_8_1_m_axis_data_tvalid_net),
    .data_out(concat_y_net)
  );
  channelizer_frame_reverse frame_reverse (
    .ready_out(ifft_fast_fourier_transform_8_1_s_axis_data_tready_net),
    .valid_in(fir_compiler_7_2_1_m_axis_data_tvalid_net),
    .data_in(concat_y_net_x0),
    .last_in(fir_compiler_7_2_1_m_axis_data_tlast_net),
    .reset_in(reset_in_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .valid_out(logical_y_net),
    .data_out(dual_port_ram_doutb_net),
    .last_out(delay1_q_net)
  );
  channelizer_last_handler last_handler (
    .ready_out(ready_out_net),
    .valid_in(ifft_fast_fourier_transform_8_1_m_axis_data_tvalid_net),
    .data_in(concat_y_net),
    .reset_in(reset_in_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .last_out(relational_op_net)
  );
  channelizer_poly_phase_filter poly_phase_filter (
    .ready_out(ifft_fast_fourier_transform_8_1_s_axis_data_tready_net),
    .valid_in(valid_in_net),
    .data_in(data_in_net),
    .reset_in(reset_in_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .ready_in(fir_compiler_7_2_1_s_axis_data_tready_net),
    .valid_out(fir_compiler_7_2_1_m_axis_data_tvalid_net),
    .data_out(concat_y_net_x0),
    .last_out(fir_compiler_7_2_1_m_axis_data_tlast_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block implementation_interface_in
module channelizer_implementation_interface_in (
  input ready_out,
  input [32-1:0] data_in,
  input [1-1:0] reset_in,
  input [1-1:0] valid_in
);
  wire fir_compiler_7_2_1_s_axis_data_tready_net;
  wire [32-1:0] data_in_net;
  wire [1-1:0] reset_in_net;
  wire [1-1:0] valid_in_net;
  assign fir_compiler_7_2_1_s_axis_data_tready_net = ready_out;
  assign data_in_net = data_in;
  assign reset_in_net = reset_in;
  assign valid_in_net = valid_in;
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block implementation_interface_out
module channelizer_implementation_interface_out (
  input valid_in,
  input [32-1:0] data_in,
  input [1-1:0] last_in,
  input [1-1:0] reset_in,
  input [1-1:0] ready_out
);
  wire ifft_fast_fourier_transform_8_1_m_axis_data_tvalid_net;
  wire [32-1:0] concat_y_net;
  wire [1-1:0] relational_op_net;
  wire [1-1:0] reset_in_net;
  wire [1-1:0] ready_out_net;
  assign ifft_fast_fourier_transform_8_1_m_axis_data_tvalid_net = valid_in;
  assign concat_y_net = data_in;
  assign relational_op_net = last_in;
  assign reset_in_net = reset_in;
  assign ready_out_net = ready_out;
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block channelizer_struct
module channelizer_struct (
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
  wire [32-1:0] data_in_net;
  wire [1-1:0] last_in_net;
  wire [1-1:0] fir_compiler_7_2_1_s_axis_data_tready_net;
  wire [1-1:0] reset_in_net;
  wire [8-1:0] set_addr_in_net;
  wire [32-1:0] set_data_in_net;
  wire [1-1:0] set_stb_in_net;
  wire [1-1:0] valid_in_net;
  wire [32-1:0] concat_y_net;
  wire [1-1:0] relational_op_net;
  wire [1-1:0] ready_out_net;
  wire [1-1:0] ifft_fast_fourier_transform_8_1_m_axis_data_tvalid_net;
  wire clk_net;
  wire ce_net;
  assign data_in_net = data_in;
  assign last_in_net = last_in;
  assign ready_in = fir_compiler_7_2_1_s_axis_data_tready_net;
  assign reset_in_net = reset_in;
  assign set_addr_in_net = set_addr_in;
  assign set_data_in_net = set_data_in;
  assign set_stb_in_net = set_stb_in;
  assign valid_in_net = valid_in;
  assign data_out = concat_y_net;
  assign last_out = relational_op_net;
  assign ready_out_net = ready_out;
  assign valid_out = ifft_fast_fourier_transform_8_1_m_axis_data_tvalid_net;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  channelizer_channelizer channelizer_x0 (
    .ready_out(ready_out_net),
    .valid_in(valid_in_net),
    .data_in(data_in_net),
    .reset_in(reset_in_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .ready_in(fir_compiler_7_2_1_s_axis_data_tready_net),
    .valid_out(ifft_fast_fourier_transform_8_1_m_axis_data_tvalid_net),
    .data_out(concat_y_net),
    .last_out(relational_op_net)
  );
  channelizer_implementation_interface_in implementation_interface_in (
    .ready_out(fir_compiler_7_2_1_s_axis_data_tready_net),
    .data_in(data_in_net),
    .reset_in(reset_in_net),
    .valid_in(valid_in_net)
  );
  channelizer_implementation_interface_out implementation_interface_out (
    .valid_in(ifft_fast_fourier_transform_8_1_m_axis_data_tvalid_net),
    .data_in(concat_y_net),
    .last_in(relational_op_net),
    .reset_in(reset_in_net),
    .ready_out(ready_out_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block 
module channelizer_default_clock_driver (
  input channelizer_sysclk,
  input channelizer_sysce,
  input channelizer_sysclr,
  output channelizer_clk1,
  output channelizer_ce1
);
  xlclockdriver #(
    .period(1),
    .log_2_period(1)
  )
  clockdriver (
    .sysclk(channelizer_sysclk),
    .sysce(channelizer_sysce),
    .sysclr(channelizer_sysclr),
    .clk(channelizer_clk1),
    .ce(channelizer_ce1)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block 
(* core_generation_info = "channelizer,sysgen_core_2015_2,{,compilation=Synthesized Checkpoint,block_icon_display=Default,family=kintex7,part=xc7k410t,speed=-2,package=ffg900,synthesis_language=verilog,hdl_library=xil_defaultlib,synthesis_strategy=Vivado Synthesis Defaults,implementation_strategy=Vivado Implementation Defaults,testbench=0,interface_doc=1,ce_clr=0,clock_period=5,system_simulink_period=1,waveform_viewer=0,axilite_interface=0,ip_catalog_plugin=0,hwcosim_burst_mode=0,simulation_time=50000,concat=2,constant=8,convert=4,counter=5,delay=3,dpram=1,fir_compiler_v7_2=1,inv=3,logical=9,reinterpret=18,relational=3,slice=16,xfft_v9_0=1,}" *)
module channelizer (
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
  channelizer_default_clock_driver channelizer_default_clock_driver (
    .channelizer_sysclk(clk),
    .channelizer_sysce(1'b1),
    .channelizer_sysclr(1'b0),
    .channelizer_clk1(clk_1_net),
    .channelizer_ce1(ce_1_net)
  );
  channelizer_struct channelizer_struct (
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
