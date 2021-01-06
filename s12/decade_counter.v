`timescale 1ns / 1ps

module decade_counter(clk,A,B,C,D,x,z);
input clk,x;
output A,B,C,D,z;
assign Da=A&~D|~x&A|x&B&C&D;
assign Db=~x&B|B&~D|B&~C|x&~B&C&D;
assign Dc=x&~A&~C&D|C&~D|~x&C;
assign Dd=x&~D|~x&D;

D_FF d1(A,Da,clk);
D_FF d2(B,Db,clk);
D_FF d3(C,Dc,clk);
D_FF d4(D,Dd,clk);
assign z=A&~B&~C&D&x;
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


