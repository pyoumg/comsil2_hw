`timescale 1ns / 1ps


module boolean_function_1_a(
    input a,
    input b,
    input c,
    output d
    );
    assign d=((~a)|(~b))&(~c);
endmodule
