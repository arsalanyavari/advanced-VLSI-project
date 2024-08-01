###################################################################

# Created by write_sdc on Sun Jul 20 23:40:14 2014

###################################################################
set sdc_version 1.8

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current uA
set_max_leakage_power 0
set_max_dynamic_power 0
create_clock [get_ports clk]  -period 10  -waveform {0 5}
set_input_delay 0  [get_ports clk]
set_input_delay 0  [get_ports reset]
set_input_delay 0  [get_ports {multiplicand[3]}]
set_input_delay 0  [get_ports {multiplicand[2]}]
set_input_delay 0  [get_ports {multiplicand[1]}]
set_input_delay 0  [get_ports {multiplicand[0]}]
set_input_delay 0  [get_ports {multiplier[3]}]
set_input_delay 0  [get_ports {multiplier[2]}]
set_input_delay 0  [get_ports {multiplier[1]}]
set_input_delay 0  [get_ports {multiplier[0]}]
set_output_delay 0  [get_ports {product[7]}]
set_output_delay 0  [get_ports {product[6]}]
set_output_delay 0  [get_ports {product[5]}]
set_output_delay 0  [get_ports {product[4]}]
set_output_delay 0  [get_ports {product[3]}]
set_output_delay 0  [get_ports {product[2]}]
set_output_delay 0  [get_ports {product[1]}]
set_output_delay 0  [get_ports {product[0]}]
set_output_delay 0  [get_ports done]
