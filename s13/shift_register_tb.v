`timescale 1ns / 1ps

module shift_register_tb();

reg IN,clk;
wire L1,L2,L3,L4;
shift_register connect(L1,L2,L3,L4,clk,IN);
initial begin
clk=0;
IN=1;
IN=#10 ~IN;
IN=#10 ~IN;
IN=#30 ~IN;


end

always clk = #5 ~clk;

initial begin
	#70
	$finish;
end
endmodule
