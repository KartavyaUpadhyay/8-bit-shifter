set PDK_PATH ./../ref

create_lib -ref_lib $PDK_PATH/lib/ndm/saed32rvt_c.ndm shifter_8bit_LIB

read_verilog {./../DC/results/shifter_8bit.mapped.v} -library shifter_8bit_LIB -design shifter_8bit -top shifter_8bit

#open the lib and block after saving
#open_lib FULL_ADDER_LIB
#open_block FULL_ADD


# FloorPlan settings

#scenario7:
initialize_floorplan -core_utilization 0.6 -shape T -orientation S -core_offset 2 -flip_first_row true
set_individual_pin_constraints -offset {1 20} -sides 8 -ports [get_ports]
place_pins -self
create_placement -floorplan

save_block
save_lib


#open_lib <lib name>
##open_block <block name>
#
####################################End of Floorplan Scenarios###############################

