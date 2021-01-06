`timescale 1ns / 1ps

module two_bit_comparator(
input A1,
input A2,
input B1,
input B2,
output F1,
output F2,
output F3
    );
    
assign F1=A2&~B1&~B2|A1&~B1|A1&A2&~B2;
assign F2=~(A1^B1)&~(A2^B2);
assign F3=~A1&~A2&B2|~A2&B1&B2|~A1&B1;
    
endmodule
