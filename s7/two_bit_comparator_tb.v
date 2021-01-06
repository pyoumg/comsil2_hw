`timescale 1ns / 1ps


module two_bit_comparator_tb;


reg aa,bb,cc,dd;
wire f1,f2,f3;



two_bit_comparator u_niv(
.A1(aa),
.A2(bb),
.B1(cc),
.B2(dd),
.F1(f1),
.F2(f2),
.F3(f3)

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
