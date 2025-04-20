#set_property SEVERITY {Warning} [get_drc_checks NSTD-1]
#set_property SEVERITY {Warning} [get_drc_checks UCIO-1]

# Debounce button and config finished LED
set_property PACKAGE_PIN A9 [get_ports led_config_finished]

# Top JE
set_property PACKAGE_PIN A7 [get_ports ov7670_reset]
set_property PACKAGE_PIN F7 [get_ports {ov7670_d[1]}]
set_property PACKAGE_PIN F8 [get_ports {ov7670_d[3]}]
set_property PACKAGE_PIN G7 [get_ports {ov7670_d[5]}]

# Bottom JE
set_property PACKAGE_PIN D7 [get_ports ov7670_pwdn]
set_property PACKAGE_PIN A6 [get_ports {ov7670_d[0]}]
set_property PACKAGE_PIN G5 [get_ports {ov7670_d[2]}]
set_property PACKAGE_PIN F6 [get_ports {ov7670_d[4]}]

# Top JD
set_property PACKAGE_PIN D6 [get_ports {ov7670_d[7]}]
set_property PACKAGE_PIN E5 [get_ports ov7670_pclk]
set_property PACKAGE_PIN E6 [get_ports ov7670_vsync]
set_property PACKAGE_PIN G6 [get_ports ov7670_sioc]

# Bottom JD
set_property PACKAGE_PIN C5 [get_ports {ov7670_d[6]}]
set_property PACKAGE_PIN B6 [get_ports ov7670_xclk]
set_property PACKAGE_PIN C7 [get_ports ov7670_href]
set_property PACKAGE_PIN D5 [get_ports ov7670_siod]


# Voltage levels
set_property IOSTANDARD LVCMOS18 [get_ports led_config_finished]
set_property IOSTANDARD LVCMOS18 [get_ports ov7670_pclk]
set_property IOSTANDARD LVCMOS18 [get_ports ov7670_sioc]
set_property IOSTANDARD LVCMOS18 [get_ports ov7670_vsync]
set_property IOSTANDARD LVCMOS18 [get_ports ov7670_reset]
set_property IOSTANDARD LVCMOS18 [get_ports ov7670_pwdn]
set_property IOSTANDARD LVCMOS18 [get_ports ov7670_href]
set_property IOSTANDARD LVCMOS18 [get_ports ov7670_xclk]
set_property IOSTANDARD LVCMOS18 [get_ports ov7670_siod]
set_property IOSTANDARD LVCMOS18 [get_ports {ov7670_d[*]}]


# Magic
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets ov7670_pclk_IBUF_inst/O]
