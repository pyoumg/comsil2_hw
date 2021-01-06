`timescale 1ns / 1ps


module one_bit(
 input a,
    input b,
    output c,
    output d,
    output e,
    output f
    );
    assign c=a^~b;
    assign d=a^b;
    assign e=a&~b;
    assign f=~a&b;
endmodule
