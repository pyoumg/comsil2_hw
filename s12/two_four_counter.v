`timescale 1ns / 1ps

module two_four_counter(clk,A,B,C,D,x,z);
input clk,x;
output A,B,C,D,z;
assign Da=A&~C|x&B&~D|A&~B|~x&A;
assign Db=~x&B|A&~C|x&~B&C&D|A&~D;
assign Dc=~x&C|C&~D|x&~C&D|x&~A&B;
assign Dd=~x&D|x&~A&~D|x&B&~D;

D_FF d1(A,Da,clk);
D_FF d2(B,Db,clk);
D_FF d3(C,Dc,clk);
D_FF d4(D,Dd,clk);
assign z=A&B&C&D&x;
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


