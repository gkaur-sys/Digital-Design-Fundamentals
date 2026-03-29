`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.03.2026 16:19:47
// Design Name: 
// Module Name: full_sub
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


module full_subtractor(
    input a,
    input b,
    input bin,
    output d,
    output bout
    );
    
    wire t1,t2,t3;
    assign t1 = a^b;
    assign t2 = (~t1)&bin;
    assign t3 = (~a)&b;
    assign d = t1^bin;
    assign bout = t2|t3;
    
endmodule
