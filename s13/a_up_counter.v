`timescale 1ns / 1ps

module a_up_counter(L,clk);
input clk;
output [3:0]L;
wire qbar;
JK_FF ff1(1,1,L[0],qbar,clk);
JK_FF ff2(1,1,L[1],qbar,~L[0]);
JK_FF ff3(1,1,L[2],qbar,~L[1]);
JK_FF ff4(1,1,L[3],qbar,~L[2]);

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