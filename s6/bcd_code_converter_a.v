`timescale 1ns / 1ps


module bcd_code_converter_a(
   
    input A,B,C,D,
    output a,b,c,d
    
    );
    assign a=~(~(B&D)&~(B&C)&~A);
    assign b=~(~(B&~D)&~(B&C)&~A);
    assign c=~(~(B&~C&D)&~(~B&C)&~A);
    assign d=D;
endmodule
