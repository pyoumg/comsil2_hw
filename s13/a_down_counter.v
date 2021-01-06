`timescale 1ns / 1ps

module a_down_counter(L,clk);
input clk;
output [3:0]L;
wire [3:0]qbar;
JK_FF d1(1,1,L[0],qbar[0],~clk);
JK_FF d2(1,1,L[1],qbar[1],qbar[0]);
JK_FF d3(1,1,L[2],qbar[2],qbar[1]);
JK_FF d4(1,1,L[3],qbar[3],qbar[2]);
endmodule

module JK_FF(J,K,Q,NQ,CLK);
input J,K,CLK;
output Q,NQ;
reg Q,NQ;
initial begin
Q=0;
NQ=0;
end

always @(posedge CLK) begin
    if (J==0 & K==0) begin
        Q <= Q;
        NQ <= NQ;
    end
    else if (J==1 & K==0) begin
        Q <= 1;
        NQ <= 0;
    end
    else if (J==0 & K==1) begin
        Q <= 0;
        NQ <= 1;
    end
    else begin
        Q <= ~Q;
        NQ <= ~NQ;
    end
end
endmodule
