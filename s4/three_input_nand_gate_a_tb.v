`timescale 1ns / 1ps


module three_input_nand_gate_a_tb;


reg aa,bb,cc;

wire y;
three_input_nand_gate_a u_inv (
.a (aa ),
.b(bb),
.c(cc),
.d (y ) );

initial aa = 1'b0;
initial bb=1'b0;
initial cc=1'b0;


always aa = #200 ~aa;
always bb=#100 ~bb;
always cc=#50 ~cc;


initial begin
	#1000
	$finish;
end

endmodule
