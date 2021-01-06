`timescale 1ns / 1ps

module checker_tb;
reg aa,bb,cc,dd,pp;
wire pec;

checker u_niv(
.A(aa),
.B(bb),
.C(cc),
.D(dd),
.P(pp),
.PEC(pec)

);
initial aa = 1'b0;
initial bb=1'b0;
initial cc=1'b0;
initial dd=1'b0;
initial pp=1'b0;


always aa = #400 ~aa;
always bb=#200 ~bb;
always cc=#100 ~cc;
always dd=#50 ~dd;
always pp=#25 ~pp;


initial begin
	#800
	$finish;
end
endmodule
