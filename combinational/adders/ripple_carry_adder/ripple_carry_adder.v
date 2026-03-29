
module ripple_carry_adder(
input [3:0] a,
input [3:0] b,
input cin,
output [3:0] s,
output cout

    );
    
    wire c1,c2,c3;
    full_adder_dataflow fa1(a[0] , b[0] , cin , s[0] , c1);
    full_adder_dataflow fa2(a[1] , b[1] , cin , s[1] , c2);
    full_adder_dataflow fa3(a[2] , b[2] , cin , s[2] , c3);
    full_adder_dataflow fa4(a[3] , b[3] , cin , s[3] , cout);
endmodule
