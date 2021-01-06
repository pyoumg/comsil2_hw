`timescale 1ns / 1ps


module full_adder_a(
    input a,
    input b,
    input cin,
    output s,
    output cout
    );
    
assign s=(a^b)^c;
assign cout=cin&(a^b)|a&b;
    
endmodule
