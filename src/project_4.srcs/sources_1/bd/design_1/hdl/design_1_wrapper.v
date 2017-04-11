//Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2016.2 (win64) Build 1577090 Thu Jun  2 16:32:40 MDT 2016
//Date        : Fri Mar 24 08:25:36 2017
//Host        : DESKTOP-AJ5CDGE running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (blue,
    clock_rtl,
    gpio_io_o,
    green,
    hsync,
    red,
    reset_rtl,
    uart_rtl_rxd,
    uart_rtl_txd,
    vsync);
  output [3:0]blue;
  input clock_rtl;
  output [7:0]gpio_io_o;
  output [3:0]green;
  output hsync;
  output [3:0]red;
  input reset_rtl;
  input uart_rtl_rxd;
  output uart_rtl_txd;
  output vsync;

  wire [3:0]blue;
  wire clock_rtl;
  wire [7:0]gpio_io_o;
  wire [3:0]green;
  wire hsync;
  wire [3:0]red;
  wire reset_rtl;
  wire uart_rtl_rxd;
  wire uart_rtl_txd;
  wire vsync;

  design_1 design_1_i
       (.blue(blue),
        .clock_rtl(clock_rtl),
        .gpio_io_o(gpio_io_o),
        .green(green),
        .hsync(hsync),
        .red(red),
        .reset_rtl(reset_rtl),
        .uart_rtl_rxd(uart_rtl_rxd),
        .uart_rtl_txd(uart_rtl_txd),
        .vsync(vsync));
endmodule
