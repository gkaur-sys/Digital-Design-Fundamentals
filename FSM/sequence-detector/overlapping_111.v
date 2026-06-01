`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.06.2026 02:48:09
// Design Name: 
// Module Name: 111_overlapping
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


module overlapping_111(
    input clk , rst , din,
    output reg dout
    );
    parameter idle = 0; 
    parameter s0 = 1;
    parameter s1 = 2;
    parameter s2 = 3;
    reg [1:0] state = idle, nstate = idle; 
    always @(posedge clk) 
    if(rst) 
    begin 
    dout <= 1'b0; 
    state <= idle; 
    end 
    else 
    begin 
    case(state) 
    idle: begin 
    dout <= 1'b0; 
    state <= s0; 
    end 
    s0: begin 
    if(din) begin
    dout<= 1'b0;
    state <= s1; 
    end
    else begin 
    dout <= 1'b0; 
    state <= s0; 
    end 
    end 
    s1: begin 
    if(din) 
    begin 
    dout<= 1'b0;
    state <= s2; 
    end
    else begin 
    dout <= 1'b0; 
    state <= s0; 
    end 
    end 
    s2: begin 
    if(din) 
    begin 
    dout<= 1'b1;
    state <= s2; 
    end
    else begin 
    dout <= 1'b0; 
    state <= s0; 
    end 
    end
    default : 
begin
    state <= idle;
    dout  <= 1'b0; 
end
endcase
 end 
    
endmodule
