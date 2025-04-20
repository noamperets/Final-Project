//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
//Date        : Fri Aug 16 12:12:19 2024
//Host        : DESKTOP-R2RDUAH running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (led_config_finished,
    ov7670_d,
    ov7670_href,
    ov7670_pclk,
    ov7670_pwdn,
    ov7670_reset,
    ov7670_sioc,
    ov7670_siod,
    ov7670_vsync,
    ov7670_xclk);
  output led_config_finished;
  input [7:0]ov7670_d;
  input ov7670_href;
  input ov7670_pclk;
  output ov7670_pwdn;
  output ov7670_reset;
  output ov7670_sioc;
  inout ov7670_siod;
  input ov7670_vsync;
  output ov7670_xclk;

  wire led_config_finished;
  wire [7:0]ov7670_d;
  wire ov7670_href;
  wire ov7670_pclk;
  wire ov7670_pwdn;
  wire ov7670_reset;
  wire ov7670_sioc;
  wire ov7670_siod;
  wire ov7670_vsync;
  wire ov7670_xclk;

  design_1 design_1_i
       (.led_config_finished(led_config_finished),
        .ov7670_d(ov7670_d),
        .ov7670_href(ov7670_href),
        .ov7670_pclk(ov7670_pclk),
        .ov7670_pwdn(ov7670_pwdn),
        .ov7670_reset(ov7670_reset),
        .ov7670_sioc(ov7670_sioc),
        .ov7670_siod(ov7670_siod),
        .ov7670_vsync(ov7670_vsync),
        .ov7670_xclk(ov7670_xclk));
endmodule
