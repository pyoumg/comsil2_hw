`timescale 1ns / 1ps

module full_subtractor_a_tb;
reg aa,bb,cc;

wire d,b;
full_subtractor_a u_inv (
.A (aa ),
.B(bb),
.b2(cc),
.b(b),
.D (d ));

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
