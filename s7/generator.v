`timescale 1ns / 1ps


module generator(
    input A,
    input B,
    input C,
    input D,
    output P
    );
assign P=A^B^C^D;
endmodule
