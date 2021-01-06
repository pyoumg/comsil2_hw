`timescale 1ns / 1ps


module checker(
input A,
input B,
input C,
input D,
input P,
output PEC
    );
assign PEC=A^B^C^D^P;
endmodule
