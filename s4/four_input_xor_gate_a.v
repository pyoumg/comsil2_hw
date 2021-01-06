`timescale 1ns / 1ps


module four_input_xor_gate_a(
    input a,
    input b,
    input c,
    input d,
    output e
    );
    assign e=a^b^c^d;
    
endmodule
