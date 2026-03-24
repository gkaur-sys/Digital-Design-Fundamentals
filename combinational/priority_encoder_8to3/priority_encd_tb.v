`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.03.2026 00:56:58
// Design Name: 
// Module Name: priority_encd_tb
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


module priority_encd_tb;
   reg [7:0] y;
   wire [2:0] abc;
   wire d;
   
   priority_encd uut (
    .y(y),
    .abc(abc),
    .d(d)
);

initial begin 
y = 8'b00000000; #10;

    // Single inputs
    y = 8'b00000001; #10; // y0
    y = 8'b00000010; #10; // y1
    y = 8'b00000100; #10; // y2
    y = 8'b00001000; #10; // y3
    y = 8'b00010000; #10; // y4
    y = 8'b00100000; #10; // y5
    y = 8'b01000000; #10; // y6
    y = 8'b10000000; #10; // y7

    y = 8'b10101010; #10; // highest = y7
    y = 8'b01110000; #10; // highest = y6
    y = 8'b00011010; #10; // highest = y4
    y = 8'b00000111; #10; // highest = y2

    $finish;
end

endmodule
