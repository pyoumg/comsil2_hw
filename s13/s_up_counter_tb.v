`timescale 1ns / 1ps

module s_up_counter_tb();

reg clk;
wire [3:0]L;
s_up_counter connect(L,clk);
initial 
clk=0;

always clk=#10 ~clk;
initial begin
	#500
	$finish;
end
endmodule
