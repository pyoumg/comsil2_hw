`timescale 1ns / 1ps

module shift_register(L1,L2,L3,L4,clk,IN);
input IN,clk;
output L1,L2,L3,L4;

D_FF d1(L1,IN,clk);
D_FF d2(L2,L1,clk);
D_FF d3(L3,L2,clk);
D_FF d4(L4,L3,clk);

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

