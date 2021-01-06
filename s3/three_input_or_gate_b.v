`timescale 1ns / 1ps


module three_input_or_gate_b(
    input a,
    input b,
    input c,
    output d,
    output e
    );
    assign d=a|b;
    assign e=d|c;
    
endmodule
