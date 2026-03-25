`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.03.2026 14:22:58
// Design Name: 
// Module Name: ha_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ha_tb;
reg a,b;
wire s,c;
half_adder_gate uut(
.a(a),
.b(b),
.s(s),
.c(c)
);

initial begin 
a = 0; b=0; #10;
a = 1; b = 0; #10;
a = 0; b = 1; #10;
a = 1; b = 1; #10;

$finish; 
end 


endmodule
