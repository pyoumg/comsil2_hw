`timescale 1ns / 1ps


module two_bit_counter(clk,A,B,x,z);
input clk,x;
output A,B,z;
assign Da=~A&B&x|A&~x|A&~B;
assign Db=B&~x|~B&x;
D_FF d1(A,Da,clk);
D_FF d2(B,Db,clk);
assign z=A&B&x;
endmodule

module D_FF(Q,D,CLK);
input D,CLK;
output Q;
reg Q,NQ;
initial begin
Q=0;
NQ=0;
end
always @(posedge CLK)begin
Q<=D;
NQ<=~D;
end
endmodule


