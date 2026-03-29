`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.03.2026 00:56:52
// Design Name: 
// Module Name: johnson_structural
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

module d_ff(
input d,
input clk,rst,
output reg q);

always @(posedge clk or posedge rst)
begin 
if (rst)
q<= 1'b0;
else
q <= d;
end

endmodule 

///////
module johnson_structural(
    input clk,rst,
    output [3:0] q
    );
    wire feedback;
    not (feedback, q[3]);

    d_ff ff0 (feedback ,clk ,rst,q[0]);
    d_ff ff1 (q[0], clk, rst, q[1]);
    d_ff ff2 (q[1], clk, rst, q[2]);
    d_ff ff3 (q[2], clk, rst, q[3]);


    
    
    
endmodule
