# This script sets up a Vivado project with all ip references resolved.
close_project -quiet
file delete -force proj.xpr *.os *.jou *.log proj.srcs proj.cache proj.runs
#
create_project -force proj 
set_property part xc7a35ticsg324-1L [current_project]
set_property target_language verilog [current_project]
set_property default_lib work [current_project]

#read_ip ../source/ltc2387/ltc2387_fifo/ltc2387_fifo.xci

#reset_target all [get_files *.xci]
#upgrade_ip -quiet  [get_ips *]
#generate_target {all} [get_ips *]

read_verilog -sv ../source/top.sv

read_xdc ../source/top.xdc  

close_project


