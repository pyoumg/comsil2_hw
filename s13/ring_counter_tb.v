`timescale 1ns / 1ps

module ring_counter_tb();

reg clk,reset;
wire L1,L2,L3,L4;
ring_counter connect(reset,L1,L2,L3,L4,clk);
initial begin
clk=1;
reset=1;
reset=#10 0;
end

always clk=#10 ~clk;
endmodule
