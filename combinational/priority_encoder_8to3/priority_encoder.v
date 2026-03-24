module priority_encd(
    input [7:0] y,
    output reg [2:0] abc,
    output reg d
    );
    
    always @(*) begin
    casex (y)
        8'b1xxxxxxx: begin abc = 3'b111; d = 1; end // y7
        8'b01xxxxxx: begin abc = 3'b110; d = 1; end // y6
        8'b001xxxxx: begin abc = 3'b101; d = 1; end // y5
        8'b0001xxxx: begin abc = 3'b100; d = 1; end // y4
        8'b00001xxx: begin abc = 3'b011; d = 1; end // y3
        8'b000001xx: begin abc = 3'b010; d = 1; end // y2
        8'b0000001x: begin abc = 3'b001; d = 1; end // y1
        8'b00000001: begin abc = 3'b000; d = 1; end // y0
        default:    begin abc = 3'b000; d = 0; end // no input
    endcase
end

endmodule
