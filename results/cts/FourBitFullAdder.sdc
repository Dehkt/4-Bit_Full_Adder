###############################################################################
# Created by write_sdc
# Thu Oct 17 05:44:14 2024
###############################################################################
current_design FourBitFullAdder
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name virtual_clk -period 10.0000 [get_ports {virtual_clk}]
set_clock_uncertainty 0.2000 virtual_clk
set_propagated_clock [get_clocks {virtual_clk}]
set_input_delay 1.5000 -clock [get_clocks {virtual_clk}] -add_delay [get_ports {A[0]}]
set_input_delay 1.5000 -clock [get_clocks {virtual_clk}] -add_delay [get_ports {A[1]}]
set_input_delay 1.5000 -clock [get_clocks {virtual_clk}] -add_delay [get_ports {A[2]}]
set_input_delay 1.5000 -clock [get_clocks {virtual_clk}] -add_delay [get_ports {A[3]}]
set_input_delay 1.5000 -clock [get_clocks {virtual_clk}] -add_delay [get_ports {B[0]}]
set_input_delay 1.5000 -clock [get_clocks {virtual_clk}] -add_delay [get_ports {B[1]}]
set_input_delay 1.5000 -clock [get_clocks {virtual_clk}] -add_delay [get_ports {B[2]}]
set_input_delay 1.5000 -clock [get_clocks {virtual_clk}] -add_delay [get_ports {B[3]}]
set_input_delay 1.5000 -clock [get_clocks {virtual_clk}] -add_delay [get_ports {Cin}]
set_output_delay 1.5000 -clock [get_clocks {virtual_clk}] -add_delay [get_ports {Cout}]
set_output_delay 1.5000 -clock [get_clocks {virtual_clk}] -add_delay [get_ports {Sum[0]}]
set_output_delay 1.5000 -clock [get_clocks {virtual_clk}] -add_delay [get_ports {Sum[1]}]
set_output_delay 1.5000 -clock [get_clocks {virtual_clk}] -add_delay [get_ports {Sum[2]}]
set_output_delay 1.5000 -clock [get_clocks {virtual_clk}] -add_delay [get_ports {Sum[3]}]
###############################################################################
# Environment
###############################################################################
###############################################################################
# Design Rules
###############################################################################
