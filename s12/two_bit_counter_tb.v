`timescale 1ns / 1ps

module two_bit_counter_tb();
reg x,clk;
wire A,B,z;
two_bit_counter connect(clk,A,B,x,z);
initial begin 
   clk=0;
   x=0;
   x = #10 ~x;
   x=#20 ~x;
   x=#30 ~x;
   x=#40 ~x;
   
end
always clk = #5 ~clk;

initial begin
	#100
	$finish;
end
endmodule
