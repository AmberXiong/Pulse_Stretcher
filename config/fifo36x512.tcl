# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xcku040-ffva1156-2-e

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /home/pyxiong/FPGA_Project/Pulse_clkdomain/Pulse_clkdomain.cache/wt [current_project]
set_property parent.project_path /home/pyxiong/FPGA_Project/Pulse_clkdomain/Pulse_clkdomain.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part xilinx.com:kcu105:part0:1.1 [current_project]
set_property vhdl_version vhdl_2k [current_fileset]
read_ip /home/pyxiong/FPGA_Project/K7UGbE/top/top.srcs/sources_1/ip/fifo36x512/fifo36x512.xci
set_property used_in_implementation false [get_files -all /home/pyxiong/FPGA_Project/K7UGbE/top/top.srcs/sources_1/ip/fifo36x512/fifo36x512.dcp]
set_property is_locked true [get_files /home/pyxiong/FPGA_Project/K7UGbE/top/top.srcs/sources_1/ip/fifo36x512/fifo36x512.xci]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
synth_design -top fifo36x512 -part xcku040-ffva1156-2-e -mode out_of_context
rename_ref -prefix_all fifo36x512_
write_checkpoint -noxdef fifo36x512.dcp
catch { report_utilization -file fifo36x512_utilization_synth.rpt -pb fifo36x512_utilization_synth.pb }
if { [catch {
  write_verilog -force -mode synth_stub /home/pyxiong/FPGA_Project/Pulse_clkdomain/Pulse_clkdomain.runs/fifo36x512_synth_1/fifo36x512_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}
if { [catch {
  write_vhdl -force -mode synth_stub /home/pyxiong/FPGA_Project/Pulse_clkdomain/Pulse_clkdomain.runs/fifo36x512_synth_1/fifo36x512_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}
if { [catch {
  write_verilog -force -mode funcsim /home/pyxiong/FPGA_Project/Pulse_clkdomain/Pulse_clkdomain.runs/fifo36x512_synth_1/fifo36x512_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}
if { [catch {
  write_vhdl -force -mode funcsim /home/pyxiong/FPGA_Project/Pulse_clkdomain/Pulse_clkdomain.runs/fifo36x512_synth_1/fifo36x512_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}
add_files /home/pyxiong/FPGA_Project/Pulse_clkdomain/Pulse_clkdomain.runs/fifo36x512_synth_1/fifo36x512_stub.v -of_objects [get_files /home/pyxiong/FPGA_Project/K7UGbE/top/top.srcs/sources_1/ip/fifo36x512/fifo36x512.xci]
add_files /home/pyxiong/FPGA_Project/Pulse_clkdomain/Pulse_clkdomain.runs/fifo36x512_synth_1/fifo36x512_stub.vhdl -of_objects [get_files /home/pyxiong/FPGA_Project/K7UGbE/top/top.srcs/sources_1/ip/fifo36x512/fifo36x512.xci]
add_files /home/pyxiong/FPGA_Project/Pulse_clkdomain/Pulse_clkdomain.runs/fifo36x512_synth_1/fifo36x512_sim_netlist.v -of_objects [get_files /home/pyxiong/FPGA_Project/K7UGbE/top/top.srcs/sources_1/ip/fifo36x512/fifo36x512.xci]
add_files /home/pyxiong/FPGA_Project/Pulse_clkdomain/Pulse_clkdomain.runs/fifo36x512_synth_1/fifo36x512_sim_netlist.vhdl -of_objects [get_files /home/pyxiong/FPGA_Project/K7UGbE/top/top.srcs/sources_1/ip/fifo36x512/fifo36x512.xci]
add_files /home/pyxiong/FPGA_Project/Pulse_clkdomain/Pulse_clkdomain.runs/fifo36x512_synth_1/fifo36x512.dcp -of_objects [get_files /home/pyxiong/FPGA_Project/K7UGbE/top/top.srcs/sources_1/ip/fifo36x512/fifo36x512.xci]

if {[file isdir /home/pyxiong/FPGA_Project/Pulse_clkdomain/Pulse_clkdomain.ip_user_files/ip/fifo36x512]} {
  catch { 
    file copy -force /home/pyxiong/FPGA_Project/Pulse_clkdomain/Pulse_clkdomain.runs/fifo36x512_synth_1/fifo36x512_sim_netlist.v /home/pyxiong/FPGA_Project/Pulse_clkdomain/Pulse_clkdomain.ip_user_files/ip/fifo36x512
  }
}

if {[file isdir /home/pyxiong/FPGA_Project/Pulse_clkdomain/Pulse_clkdomain.ip_user_files/ip/fifo36x512]} {
  catch { 
    file copy -force /home/pyxiong/FPGA_Project/Pulse_clkdomain/Pulse_clkdomain.runs/fifo36x512_synth_1/fifo36x512_sim_netlist.vhdl /home/pyxiong/FPGA_Project/Pulse_clkdomain/Pulse_clkdomain.ip_user_files/ip/fifo36x512
  }
}

if {[file isdir /home/pyxiong/FPGA_Project/Pulse_clkdomain/Pulse_clkdomain.ip_user_files/ip/fifo36x512]} {
  catch { 
    file copy -force /home/pyxiong/FPGA_Project/Pulse_clkdomain/Pulse_clkdomain.runs/fifo36x512_synth_1/fifo36x512_stub.v /home/pyxiong/FPGA_Project/Pulse_clkdomain/Pulse_clkdomain.ip_user_files/ip/fifo36x512
  }
}

if {[file isdir /home/pyxiong/FPGA_Project/Pulse_clkdomain/Pulse_clkdomain.ip_user_files/ip/fifo36x512]} {
  catch { 
    file copy -force /home/pyxiong/FPGA_Project/Pulse_clkdomain/Pulse_clkdomain.runs/fifo36x512_synth_1/fifo36x512_stub.vhdl /home/pyxiong/FPGA_Project/Pulse_clkdomain/Pulse_clkdomain.ip_user_files/ip/fifo36x512
  }
}
