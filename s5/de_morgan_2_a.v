`timescale 1ns / 1ps


module de_morgan_2_a(
    input a,
    input b,
    output c
    );
    assign c=~(a&b);
endmodule
