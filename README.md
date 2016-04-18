# rfnoc_pp_channelizer
A RFNoC Implementation of a Polyphase Filterbank Channelizer and Synthesizer. Based on Xilinx Application Note http://www.xilinx.com/support/documentation/application_notes/xapp1161.pdf


# A. Description of Files

/bitfiles/x300.bit
Bitfile for X310 based on fpga.git of Dec-2016
16 Subchannels

/custom_sources/channelizer.xml
/custom_sources/syntheses.xml
uhd rfnoc definitions
install them into ..../share/uhd/rfnoc/blocks

/custom_sources/uhd_rfnoc_channelizer.xml
/custom_sources/uhd_rfnoc_syntheses.xml
/custom_sources/ettus_block_trees.xml
block definitions and block tree for GRC
install them into ...../share/gnuradio/grc/blocks

/custom_sources/noc_block_channelizer.v
/custom_sources/noc_block_syntheses.v
verilog files for the customized rfnoc blocks
the computational engines (=the DSP itself) has been made in System Generator (see /sysgen_models/)

/custom_sources/rfnoc_ce_auto_inst_x310.v
customized from original file to instanaticiate the custom blocks 

/grc_graphs/
GRC test graphs

/sysgen_models/
Xilinx System Generator Models for the computational engines. Matlab 2015b, Vivado 2015.2


# B. Installation
Burn the bitfile to the USRP. (You will need a rfnoc-branch uhd.) Power cycle.
Copy uhd and GRC block definition in installation folders (see above).
uhd_usrp_probe --init-only for uhd installation check
Open GRC Graphs for further testing.


# C. Rebuilding Firmware
Build the recent fpga firmware with the option GUI=1 to get a Vivado Project.
Save Project.
Save Project again with a different name.
Add Sources (noc_block_...  and synthesized checkpoints from sysgen models)
Replace rfnoc_ce_auto_inst_x310.v in the local original fpga repository.
Run Synthesize, Implement, Generate Bitfile


# D. Customizing
Customizes the SysGen Models
sim_model.xls is for designing and simulation
channelizer/synthese.xls is just for implementation (copy body of sim_model.xls to them)
Make a synthesized checkpoint
rebuild firmware


# E. Known Issues
Always put a packet-resizer block behind the channelizer/ syntheses block(like in the example graphs) or you will get timeouts instead of output. Its someting about the tlast.
Always power cycle the USRP before restarting a GNURadio Graph. Otherwise the subchannels will be shifted. I need to figure out a way of internally resetting the computanial engines when restarting the transmission. 






















