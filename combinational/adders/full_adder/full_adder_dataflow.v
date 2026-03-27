module full_adder_dataflow(
    input a,
    input b,
    input cin,
    output s,
    output cout
    );
    
    wire t1,t2,t3;
    assign t1 = a^b;
    assign t2 = t1&cin;
    assign t3 = a & b;
    assign cout = t2 | t3;
    assign s = t1^ cin;
    
    
endmodule
