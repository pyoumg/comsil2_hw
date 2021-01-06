`timescale 1ns / 1ps
module ring_counter(reset,L1,L2,L3,L4,clk);

input clk,reset;
output  L1,L2,L3,L4;
wire temp,temp2,temp3,temp4;
assign temp= reset? 1: L3;
assign temp2=reset?0:L1;
assign temp3=reset?0:L2;
assign temp4=reset?0:L3;

D_FF d1(L1,temp,clk);
D_FF d2(L2,temp2,clk);
D_FF d3(L3,temp3,clk);
D_FF d4(L4,temp4,clk);



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

