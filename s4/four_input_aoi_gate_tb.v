`timescale 1ns / 1ps


module four_input_aoi_gate_tb;


reg aa,bb,cc,dd;

wire e,f,g;
four_input_aoi_gate u_inv (
.a (aa ),
.b(bb),
.c(cc),
.d(dd),
.e(e),
.f(f),
.g (g ) );

initial aa = 1'b0;
initial bb=1'b0;
initial cc=1'b0;
initial dd=1'b0;

always aa = #200 ~aa;
always bb=#100 ~bb;
always cc=#50 ~cc;
always dd=#25 ~dd;

initial begin
	#1000
	$finish;
end

endmodule
