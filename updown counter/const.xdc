## ================= CLOCK =================
## 100 MHz onboard clock
set_property IOSTANDARD LVCMOS33 [get_ports clk]
create_clock -period 10.000 -name sys_clk [get_ports clk]

## ================= RESET (Push Button) =================
set_property PACKAGE_PIN F22 [get_ports rst]
set_property IOSTANDARD LVCMOS33 [get_ports rst]

## ================= UP/DOWN CONTROL (Switch) =================
set_property PACKAGE_PIN G22 [get_ports up_down]
set_property IOSTANDARD LVCMOS33 [get_ports up_down]

## ================= LED OUTPUTS =================
## 8-bit counter output to LEDs

set_property PACKAGE_PIN T22 [get_ports {count[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {count[0]}]

set_property PACKAGE_PIN T21 [get_ports {count[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {count[1]}]

set_property PACKAGE_PIN U22 [get_ports {count[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {count[2]}]

set_property PACKAGE_PIN U21 [get_ports {count[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {count[3]}]

set_property PACKAGE_PIN V22 [get_ports {count[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {count[4]}]

set_property PACKAGE_PIN W22 [get_ports {count[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {count[5]}]

set_property PACKAGE_PIN U19 [get_ports {count[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {count[6]}]

set_property PACKAGE_PIN U14 [get_ports {count[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {count[7]}]

set_property PACKAGE_PIN Y9 [get_ports clk]
