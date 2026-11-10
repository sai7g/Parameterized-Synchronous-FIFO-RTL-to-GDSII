create_clock -name core_clk -period 10.000 [get_ports clk]

set_clock_uncertainty 0.200 [get_clocks core_clk]
set_clock_transition 0.100 [get_clocks core_clk]

set_input_delay -clock core_clk -max 1.000 [get_ports {wr_en rd_en wr_data[*]}]
set_input_delay -clock core_clk -min 0.000 [get_ports {wr_en rd_en wr_data[*]}]

set_input_transition 0.100 [get_ports {wr_en rd_en wr_data[*]}]

set_output_delay -clock core_clk -max 1.000 [get_ports {rd_data[*] full empty almost_full almost_empty occupancy[*]}]
set_output_delay -clock core_clk -min 0.000 [get_ports {rd_data[*] full empty almost_full almost_empty occupancy[*]}]

set_load 0.010 [get_ports {rd_data[*] full empty almost_full almost_empty occupancy[*]}]

set_false_path -from [get_ports rst_n]
