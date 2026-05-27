//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
//Date        : Thu May 28 03:12:30 2026
//Host        : DESKTOP-TJ4D838 running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (clka_0,
    douta_0,
    ena_0);
  input clka_0;
  output [7:0]douta_0;
  input ena_0;

  wire clka_0;
  wire [7:0]douta_0;
  wire ena_0;

  design_1 design_1_i
       (.clka_0(clka_0),
        .douta_0(douta_0),
        .ena_0(ena_0));
endmodule
