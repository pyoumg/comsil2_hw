`timescale 1ns / 1ps


module two_four_counter_tb();

reg x,clk;
wire A,B,C,D,z;
two_four_counter connect(clk,A,B,C,D,x,z);
initial begin 
   clk=0;
   x=0;
end
always clk = #5 ~clk;
always x=#10 ~x;

initial begin
	#300
	$finish;
end
endmodule