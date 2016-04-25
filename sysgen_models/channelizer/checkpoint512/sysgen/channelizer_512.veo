  channelizer_512 sysgen_dut (
    .data_in(data_in),
    .last_in(last_in),
    .reset_in(reset_in),
    .set_addr_in(set_addr_in),
    .set_data_in(set_data_in),
    .set_stb_in(set_stb_in),
    .valid_in(valid_in),
    .ready_out(ready_out),
    .clk(clk),
    .ready_in(ready_in),
    .data_out(data_out),
    .last_out(last_out),
    .valid_out(valid_out)
  );
