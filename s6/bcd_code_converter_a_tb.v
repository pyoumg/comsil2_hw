`timescale 1ns / 1ps

module bcd_code_converter_a_tb;

reg aa,bb,cc,dd;
wire a,b,c,d;

bcd_code_converter_a u_niv(
.A (aa ),
.B(bb),
.C(cc),
.D (dd ),
.a(a),
.b(b),
.c(c),
.d(d)


);

initial aa = 1'b0;
initial bb=1'b0;
initial cc=1'b0;
initial dd=1'b0;

always aa = #200 ~aa;
always bb=#100 ~bb;
always cc=#50 ~cc;
always dd=#25 ~dd;

initial begin
	#250
	$finish;
end

endmodule
