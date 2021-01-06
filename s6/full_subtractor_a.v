`timescale 1ns / 1ps


module full_subtractor_a(
    input A,
    input B,
    input b2,
    output b,
    output D
    );
    assign D=A^B^b2;
    assign b=~(A^B)&b2|~A&B;
endmodule
