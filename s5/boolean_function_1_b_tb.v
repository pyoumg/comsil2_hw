`timescale 1ns / 1ps

module boolean_function_1_b_tb;



reg aa,bb,cc;

wire d;
boolean_function_1_b u_inv (
.a (aa ),
.b(bb),
.c(cc),
.d (d ));

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
