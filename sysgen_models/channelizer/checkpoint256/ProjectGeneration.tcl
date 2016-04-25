# Note: This file is produced automatically, and will be overwritten the next
# time you press "Generate" in System Generator. 
#


namespace eval ::xilinx::dsp::planaheaddriver {
	proc additional_tcl_commands {} { 
		set_property -name {STEPS.SYNTH_DESIGN.ARGS.MORE OPTIONS} -value {-mode out_of_context} -objects [get_runs synth_1]
		set_property USED_IN {out_of_context synthesis implementation} [get_files channelizer_256_clock.xdc]
		launch_runs synth_1
		wait_on_run synth_1
		open_run synth_1 -name netlist_1
		write_checkpoint channelizer_256.dcp -force
	}

	set Compilation {Synthesized Checkpoint}
	set CompilationFlow {Project}
	set CustomProjectDir {Synthesized Checkpoint}
	set DSPDevice {xc7k410t}
	set DSPFamily {kintex7}
	set DSPPackage {ffg900}
	set DSPSpeed {-2}
	set FPGAClockPeriod 5
	set GenerateTestBench 0
	set HDLLanguage {verilog}
	set IPOOCCacheRootPath {/home/randy/.Xilinx/Sysgen/SysgenVivado/lnx64.o/ip}
	set ImplStrategyName {Vivado Implementation Defaults}
	set PostProjectCreationProc {additional_tcl_commands}
	set Project {channelizer_256}
	set ProjectFiles {
		{{conv_pkg.v}}
		{{synth_reg.v}}
		{{synth_reg_w_init.v}}
		{{convert_type.v}}
		{{xlclockdriver_rd.v}}
		{{vivado_ip.tcl}}
		{{channelizer_256_blk_mem_gen_v8_2_0_vivado.coe}}
		{{channelizer_256_entity_declarations.v}}
		{{channelizer_256.v}}
		{{channelizer_256_clock.xdc}}
		{{channelizer_256.xdc}}
		{{channelizer_256.htm}}
	}
	set SimPeriod 1
	set SimTime 50000
	set SimulationTime {250205.00000000 ns}
	set SynthStrategyName {Vivado Synthesis Defaults}
	set SynthesisTool {Vivado}
	set TargetDir {/home/randy/rfnoc_dec2015/sysgen_models/pp_chan/channelizer/checkpoint256}
	set TopLevelModule {channelizer_256}
	set TopLevelSimulinkHandle 2.00024
	set TopLevelPortInterface {}
	dict set TopLevelPortInterface ready_out Name {ready_out}
	dict set TopLevelPortInterface ready_out Type Bool
	dict set TopLevelPortInterface ready_out ArithmeticType xlUnsigned
	dict set TopLevelPortInterface ready_out BinaryPoint 0
	dict set TopLevelPortInterface ready_out Width 1
	dict set TopLevelPortInterface ready_out DatFile {channelizer_256_implementation_interface_out_ready_out.dat}
	dict set TopLevelPortInterface ready_out IconText {ready_out}
	dict set TopLevelPortInterface ready_out Direction in
	dict set TopLevelPortInterface ready_out Period 1
	dict set TopLevelPortInterface ready_out Interface 0
	dict set TopLevelPortInterface ready_out InterfaceName {}
	dict set TopLevelPortInterface ready_out InterfaceString {DATA}
	dict set TopLevelPortInterface ready_out ClockDomain {channelizer_256}
	dict set TopLevelPortInterface ready_out Locs {}
	dict set TopLevelPortInterface ready_out IOStandard {}
	dict set TopLevelPortInterface valid_in Name {valid_in}
	dict set TopLevelPortInterface valid_in Type Bool
	dict set TopLevelPortInterface valid_in ArithmeticType xlUnsigned
	dict set TopLevelPortInterface valid_in BinaryPoint 0
	dict set TopLevelPortInterface valid_in Width 1
	dict set TopLevelPortInterface valid_in DatFile {channelizer_256_implementation_interface_in_valid_in.dat}
	dict set TopLevelPortInterface valid_in IconText {valid_in}
	dict set TopLevelPortInterface valid_in Direction in
	dict set TopLevelPortInterface valid_in Period 1
	dict set TopLevelPortInterface valid_in Interface 0
	dict set TopLevelPortInterface valid_in InterfaceName {}
	dict set TopLevelPortInterface valid_in InterfaceString {DATA}
	dict set TopLevelPortInterface valid_in ClockDomain {channelizer_256}
	dict set TopLevelPortInterface valid_in Locs {}
	dict set TopLevelPortInterface valid_in IOStandard {}
	dict set TopLevelPortInterface set_stb_in Name {set_stb_in}
	dict set TopLevelPortInterface set_stb_in Type Bool
	dict set TopLevelPortInterface set_stb_in ArithmeticType xlUnsigned
	dict set TopLevelPortInterface set_stb_in BinaryPoint 0
	dict set TopLevelPortInterface set_stb_in Width 1
	dict set TopLevelPortInterface set_stb_in DatFile {channelizer_256_implementation_interface_in_set_stb_in.dat}
	dict set TopLevelPortInterface set_stb_in IconText {set_stb_in}
	dict set TopLevelPortInterface set_stb_in Direction in
	dict set TopLevelPortInterface set_stb_in Period 1
	dict set TopLevelPortInterface set_stb_in Interface 0
	dict set TopLevelPortInterface set_stb_in InterfaceName {}
	dict set TopLevelPortInterface set_stb_in InterfaceString {DATA}
	dict set TopLevelPortInterface set_stb_in ClockDomain {channelizer_256}
	dict set TopLevelPortInterface set_stb_in Locs {}
	dict set TopLevelPortInterface set_stb_in IOStandard {}
	dict set TopLevelPortInterface set_data_in Name {set_data_in}
	dict set TopLevelPortInterface set_data_in Type UFix_32_0
	dict set TopLevelPortInterface set_data_in ArithmeticType xlUnsigned
	dict set TopLevelPortInterface set_data_in BinaryPoint 0
	dict set TopLevelPortInterface set_data_in Width 32
	dict set TopLevelPortInterface set_data_in DatFile {channelizer_256_implementation_interface_in_set_data_in.dat}
	dict set TopLevelPortInterface set_data_in IconText {set_data_in}
	dict set TopLevelPortInterface set_data_in Direction in
	dict set TopLevelPortInterface set_data_in Period 1
	dict set TopLevelPortInterface set_data_in Interface 0
	dict set TopLevelPortInterface set_data_in InterfaceName {}
	dict set TopLevelPortInterface set_data_in InterfaceString {DATA}
	dict set TopLevelPortInterface set_data_in ClockDomain {channelizer_256}
	dict set TopLevelPortInterface set_data_in Locs {}
	dict set TopLevelPortInterface set_data_in IOStandard {}
	dict set TopLevelPortInterface set_addr_in Name {set_addr_in}
	dict set TopLevelPortInterface set_addr_in Type UFix_8_0
	dict set TopLevelPortInterface set_addr_in ArithmeticType xlUnsigned
	dict set TopLevelPortInterface set_addr_in BinaryPoint 0
	dict set TopLevelPortInterface set_addr_in Width 8
	dict set TopLevelPortInterface set_addr_in DatFile {channelizer_256_implementation_interface_in_set_addr_in.dat}
	dict set TopLevelPortInterface set_addr_in IconText {set_addr_in}
	dict set TopLevelPortInterface set_addr_in Direction in
	dict set TopLevelPortInterface set_addr_in Period 1
	dict set TopLevelPortInterface set_addr_in Interface 0
	dict set TopLevelPortInterface set_addr_in InterfaceName {}
	dict set TopLevelPortInterface set_addr_in InterfaceString {DATA}
	dict set TopLevelPortInterface set_addr_in ClockDomain {channelizer_256}
	dict set TopLevelPortInterface set_addr_in Locs {}
	dict set TopLevelPortInterface set_addr_in IOStandard {}
	dict set TopLevelPortInterface reset_in Name {reset_in}
	dict set TopLevelPortInterface reset_in Type Bool
	dict set TopLevelPortInterface reset_in ArithmeticType xlUnsigned
	dict set TopLevelPortInterface reset_in BinaryPoint 0
	dict set TopLevelPortInterface reset_in Width 1
	dict set TopLevelPortInterface reset_in DatFile {channelizer_256_implementation_interface_in_reset_in.dat}
	dict set TopLevelPortInterface reset_in IconText {reset_in}
	dict set TopLevelPortInterface reset_in Direction in
	dict set TopLevelPortInterface reset_in Period 1
	dict set TopLevelPortInterface reset_in Interface 0
	dict set TopLevelPortInterface reset_in InterfaceName {}
	dict set TopLevelPortInterface reset_in InterfaceString {DATA}
	dict set TopLevelPortInterface reset_in ClockDomain {channelizer_256}
	dict set TopLevelPortInterface reset_in Locs {}
	dict set TopLevelPortInterface reset_in IOStandard {}
	dict set TopLevelPortInterface last_in Name {last_in}
	dict set TopLevelPortInterface last_in Type Bool
	dict set TopLevelPortInterface last_in ArithmeticType xlUnsigned
	dict set TopLevelPortInterface last_in BinaryPoint 0
	dict set TopLevelPortInterface last_in Width 1
	dict set TopLevelPortInterface last_in DatFile {channelizer_256_implementation_interface_in_last_in.dat}
	dict set TopLevelPortInterface last_in IconText {last_in}
	dict set TopLevelPortInterface last_in Direction in
	dict set TopLevelPortInterface last_in Period 1
	dict set TopLevelPortInterface last_in Interface 0
	dict set TopLevelPortInterface last_in InterfaceName {}
	dict set TopLevelPortInterface last_in InterfaceString {DATA}
	dict set TopLevelPortInterface last_in ClockDomain {channelizer_256}
	dict set TopLevelPortInterface last_in Locs {}
	dict set TopLevelPortInterface last_in IOStandard {}
	dict set TopLevelPortInterface data_in Name {data_in}
	dict set TopLevelPortInterface data_in Type UFix_32_0
	dict set TopLevelPortInterface data_in ArithmeticType xlUnsigned
	dict set TopLevelPortInterface data_in BinaryPoint 0
	dict set TopLevelPortInterface data_in Width 32
	dict set TopLevelPortInterface data_in DatFile {channelizer_256_implementation_interface_in_data_in.dat}
	dict set TopLevelPortInterface data_in IconText {data_in}
	dict set TopLevelPortInterface data_in Direction in
	dict set TopLevelPortInterface data_in Period 1
	dict set TopLevelPortInterface data_in Interface 0
	dict set TopLevelPortInterface data_in InterfaceName {}
	dict set TopLevelPortInterface data_in InterfaceString {DATA}
	dict set TopLevelPortInterface data_in ClockDomain {channelizer_256}
	dict set TopLevelPortInterface data_in Locs {}
	dict set TopLevelPortInterface data_in IOStandard {}
	dict set TopLevelPortInterface ready_in Name {ready_in}
	dict set TopLevelPortInterface ready_in Type Bool
	dict set TopLevelPortInterface ready_in ArithmeticType xlUnsigned
	dict set TopLevelPortInterface ready_in BinaryPoint 0
	dict set TopLevelPortInterface ready_in Width 1
	dict set TopLevelPortInterface ready_in DatFile {channelizer_256_implementation_interface_in_ready_in.dat}
	dict set TopLevelPortInterface ready_in IconText {ready_in}
	dict set TopLevelPortInterface ready_in Direction out
	dict set TopLevelPortInterface ready_in Period 1
	dict set TopLevelPortInterface ready_in Interface 0
	dict set TopLevelPortInterface ready_in InterfaceName {}
	dict set TopLevelPortInterface ready_in InterfaceString {DATA}
	dict set TopLevelPortInterface ready_in ClockDomain {channelizer_256}
	dict set TopLevelPortInterface ready_in Locs {}
	dict set TopLevelPortInterface ready_in IOStandard {}
	dict set TopLevelPortInterface data_out Name {data_out}
	dict set TopLevelPortInterface data_out Type UFix_32_0
	dict set TopLevelPortInterface data_out ArithmeticType xlUnsigned
	dict set TopLevelPortInterface data_out BinaryPoint 0
	dict set TopLevelPortInterface data_out Width 32
	dict set TopLevelPortInterface data_out DatFile {channelizer_256_implementation_interface_out_data_out.dat}
	dict set TopLevelPortInterface data_out IconText {data_out}
	dict set TopLevelPortInterface data_out Direction out
	dict set TopLevelPortInterface data_out Period 1
	dict set TopLevelPortInterface data_out Interface 0
	dict set TopLevelPortInterface data_out InterfaceName {}
	dict set TopLevelPortInterface data_out InterfaceString {DATA}
	dict set TopLevelPortInterface data_out ClockDomain {channelizer_256}
	dict set TopLevelPortInterface data_out Locs {}
	dict set TopLevelPortInterface data_out IOStandard {}
	dict set TopLevelPortInterface last_out Name {last_out}
	dict set TopLevelPortInterface last_out Type Bool
	dict set TopLevelPortInterface last_out ArithmeticType xlUnsigned
	dict set TopLevelPortInterface last_out BinaryPoint 0
	dict set TopLevelPortInterface last_out Width 1
	dict set TopLevelPortInterface last_out DatFile {channelizer_256_implementation_interface_out_last_out.dat}
	dict set TopLevelPortInterface last_out IconText {last_out}
	dict set TopLevelPortInterface last_out Direction out
	dict set TopLevelPortInterface last_out Period 1
	dict set TopLevelPortInterface last_out Interface 0
	dict set TopLevelPortInterface last_out InterfaceName {}
	dict set TopLevelPortInterface last_out InterfaceString {DATA}
	dict set TopLevelPortInterface last_out ClockDomain {channelizer_256}
	dict set TopLevelPortInterface last_out Locs {}
	dict set TopLevelPortInterface last_out IOStandard {}
	dict set TopLevelPortInterface valid_out Name {valid_out}
	dict set TopLevelPortInterface valid_out Type Bool
	dict set TopLevelPortInterface valid_out ArithmeticType xlUnsigned
	dict set TopLevelPortInterface valid_out BinaryPoint 0
	dict set TopLevelPortInterface valid_out Width 1
	dict set TopLevelPortInterface valid_out DatFile {channelizer_256_implementation_interface_out_valid_out.dat}
	dict set TopLevelPortInterface valid_out IconText {valid_out}
	dict set TopLevelPortInterface valid_out Direction out
	dict set TopLevelPortInterface valid_out Period 1
	dict set TopLevelPortInterface valid_out Interface 0
	dict set TopLevelPortInterface valid_out InterfaceName {}
	dict set TopLevelPortInterface valid_out InterfaceString {DATA}
	dict set TopLevelPortInterface valid_out ClockDomain {channelizer_256}
	dict set TopLevelPortInterface valid_out Locs {}
	dict set TopLevelPortInterface valid_out IOStandard {}
	dict set TopLevelPortInterface clk Name {clk}
	dict set TopLevelPortInterface clk Type -
	dict set TopLevelPortInterface clk ArithmeticType xlUnsigned
	dict set TopLevelPortInterface clk BinaryPoint 0
	dict set TopLevelPortInterface clk Width 1
	dict set TopLevelPortInterface clk DatFile {}
	dict set TopLevelPortInterface clk Direction in
	dict set TopLevelPortInterface clk Period 1
	dict set TopLevelPortInterface clk Interface 6
	dict set TopLevelPortInterface clk InterfaceName {}
	dict set TopLevelPortInterface clk InterfaceString {CLOCK}
	dict set TopLevelPortInterface clk ClockDomain {channelizer_256}
	dict set TopLevelPortInterface clk Locs {}
	dict set TopLevelPortInterface clk IOStandard {}
	dict set TopLevelPortInterface clk AssociatedInterfaces {}
	dict set TopLevelPortInterface clk AssociatedResets {}
	set MemoryMappedPort {}
}

source SgPaProject.tcl
::xilinx::dsp::planaheadworker::dsp_create_project