`timescale 1ns / 1ps
module generator_tb;


reg aa,bb,cc,dd;
wire p;



generator u_niv(
.A(aa),
.B(bb),
.C(cc),
.D(dd),
.P(p)
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
	#400
	$finish;
end
endmodule
