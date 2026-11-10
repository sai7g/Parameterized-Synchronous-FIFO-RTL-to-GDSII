read_liberty /pdk/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__tt_025C_1v80.lib

read_verilog /work/synthesis/sync_fifo_netlist.v

link_design sync_fifo

read_sdc /work/synthesis/sync_fifo.sdc

check_setup -verbose

report_checks -path_delay max -format full_clock_expanded -digits 4

report_checks -path_delay max -from [all_registers -output_pins] -to [all_registers -data_pins] -format full_clock_expanded -digits 4

report_checks -path_delay max -from [all_inputs] -to [all_registers -data_pins] -format full_clock_expanded -digits 4
report_checks -path_delay max -from [all_inputs] -to [all_outputs] -format full_clock_expanded -digits 4
report_checks -path_delay min -from [all_registers -output_pins] -to [all_registers -data_pins] -format full_clock_expanded -digits 4
report_checks -path_delay min -from [all_inputs] -to [all_registers -data_pins] -format full_clock_expanded -digits 4
report_checks -path_delay min -format full_clock_expanded -digits 4
exit
