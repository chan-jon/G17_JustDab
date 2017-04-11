set_property SRC_FILE_INFO {cfile:c:/Xilinx/ECE532/Image/project_3/project_3.srcs/sources_1/bd/design_1/ip/design_1_microblaze_0_0/design_1_microblaze_0_0.xdc rfile:../../../project_3.srcs/sources_1/bd/design_1/ip/design_1_microblaze_0_0/design_1_microblaze_0_0.xdc id:1 order:EARLY scoped_inst:design_1_i/microblaze_0/U0} [current_design]
set_property SRC_FILE_INFO {cfile:c:/Xilinx/ECE532/Image/project_3/project_3.srcs/sources_1/bd/design_1/ip/design_1_mdm_1_0/design_1_mdm_1_0.xdc rfile:../../../project_3.srcs/sources_1/bd/design_1/ip/design_1_mdm_1_0/design_1_mdm_1_0.xdc id:2 order:EARLY scoped_inst:design_1_i/mdm_1/U0} [current_design]
set_property SRC_FILE_INFO {cfile:c:/Xilinx/ECE532/Image/project_3/project_3.srcs/sources_1/bd/design_1/ip/design_1_clk_wiz_1_0/design_1_clk_wiz_1_0.xdc rfile:../../../project_3.srcs/sources_1/bd/design_1/ip/design_1_clk_wiz_1_0/design_1_clk_wiz_1_0.xdc id:3 order:EARLY scoped_inst:design_1_i/clk_wiz_1/inst} [current_design]
set_property SRC_FILE_INFO {cfile:C:/Xilinx/ECE532/Image/project_3/project_3.srcs/constrs_1/new/project.xdc rfile:../../../project_3.srcs/constrs_1/new/project.xdc id:4} [current_design]
set_property src_info {type:SCOPED_XDC file:1 line:2 export:INPUT save:INPUT read:READ} [current_design]
set_ip_msg_config -idlist { DPOP-3 PDCN-1569 CDC-1 CDC-4 CDC-7 TIMING-9 TIMING-10 }
set_property src_info {type:SCOPED_XDC file:2 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_ip_msg_config -idlist { CDC-1 CDCM-1 REQP-1851 TIMING-2 TIMING-4 TIMING-9 TIMING-10 TIMING-14 }
set_property src_info {type:SCOPED_XDC file:3 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.1
set_property src_info {type:XDC file:4 line:2 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN E3 IOSTANDARD LVCMOS33 } [get_ports { clock_rtl }];
set_property src_info {type:XDC file:4 line:5 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN C12 IOSTANDARD LVCMOS33 } [get_ports { reset_rtl }];
set_property src_info {type:XDC file:4 line:7 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN H17 IOSTANDARD LVCMOS33 } [get_ports { gpio_io_o[0] }];
set_property src_info {type:XDC file:4 line:8 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN K15 IOSTANDARD LVCMOS33 } [get_ports { gpio_io_o[1] }];
set_property src_info {type:XDC file:4 line:9 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN J13   IOSTANDARD LVCMOS33 } [get_ports { gpio_io_o[2] }];
set_property src_info {type:XDC file:4 line:10 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN N14   IOSTANDARD LVCMOS33 } [get_ports { gpio_io_o[3] }];
set_property src_info {type:XDC file:4 line:11 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN R18   IOSTANDARD LVCMOS33 } [get_ports { gpio_io_o[4] }];
set_property src_info {type:XDC file:4 line:12 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN V17   IOSTANDARD LVCMOS33 } [get_ports { gpio_io_o[5] }];
set_property src_info {type:XDC file:4 line:13 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN U17   IOSTANDARD LVCMOS33 } [get_ports { gpio_io_o[6] }];
set_property src_info {type:XDC file:4 line:14 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN U16   IOSTANDARD LVCMOS33 } [get_ports { gpio_io_o[7] }];
set_property src_info {type:XDC file:4 line:16 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN C4 IOSTANDARD LVCMOS33 } [get_ports { uart_rtl_rxd }];
set_property src_info {type:XDC file:4 line:17 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN D4 IOSTANDARD LVCMOS33 } [get_ports { uart_rtl_txd }];
set_property src_info {type:XDC file:4 line:19 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN A3    IOSTANDARD LVCMOS33 } [get_ports { red[0] }]; #IO_L8N_T1_AD14N_35 Sch=vga_r[0]
set_property src_info {type:XDC file:4 line:20 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN B4    IOSTANDARD LVCMOS33 } [get_ports { red[1] }]; #IO_L7N_T1_AD6N_35 Sch=vga_r[1]
set_property src_info {type:XDC file:4 line:21 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN C5    IOSTANDARD LVCMOS33 } [get_ports { red[2] }]; #IO_L1N_T0_AD4N_35 Sch=vga_r[2]
set_property src_info {type:XDC file:4 line:22 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN A4    IOSTANDARD LVCMOS33 } [get_ports { red[3] }]; #IO_L8P_T1_AD14P_35 Sch=vga_r[3]
set_property src_info {type:XDC file:4 line:24 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN C6    IOSTANDARD LVCMOS33 } [get_ports { green[0] }]; #IO_L1P_T0_AD4P_35 Sch=vga_g[0]
set_property src_info {type:XDC file:4 line:25 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN A5    IOSTANDARD LVCMOS33 } [get_ports { green[1] }]; #IO_L3N_T0_DQS_AD5N_35 Sch=vga_g[1]
set_property src_info {type:XDC file:4 line:26 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN B6    IOSTANDARD LVCMOS33 } [get_ports { green[2] }]; #IO_L2N_T0_AD12N_35 Sch=vga_g[2]
set_property src_info {type:XDC file:4 line:27 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN A6    IOSTANDARD LVCMOS33 } [get_ports { green[3] }]; #IO_L3P_T0_DQS_AD5P_35 Sch=vga_g[3]
set_property src_info {type:XDC file:4 line:29 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN B7    IOSTANDARD LVCMOS33 } [get_ports { blue[0] }]; #IO_L2P_T0_AD12P_35 Sch=vga_b[0]
set_property src_info {type:XDC file:4 line:30 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN C7    IOSTANDARD LVCMOS33 } [get_ports { blue[1] }]; #IO_L4N_T0_35 Sch=vga_b[1]
set_property src_info {type:XDC file:4 line:31 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN D7    IOSTANDARD LVCMOS33 } [get_ports { blue[2] }]; #IO_L6N_T0_VREF_35 Sch=vga_b[2]
set_property src_info {type:XDC file:4 line:32 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN D8    IOSTANDARD LVCMOS33 } [get_ports { blue[3] }]; #IO_L4P_T0_35 Sch=vga_b[3]
set_property src_info {type:XDC file:4 line:34 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN B11   IOSTANDARD LVCMOS33 } [get_ports { hsync }]; #IO_L4P_T0_15 Sch=vga_hs
set_property src_info {type:XDC file:4 line:35 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN B12   IOSTANDARD LVCMOS33 } [get_ports { vsync }]; #IO_L3N_T0_DQS_AD1N_15 Sch=vga_vs
