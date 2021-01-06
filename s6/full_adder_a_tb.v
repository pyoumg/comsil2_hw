`timescale 1ns / 1ps


module full_adder_a_tb;


reg aa,bb,cc;

wire s,cout;

full_adder_a u_inv (
.a (aa ),
.b(bb),
.cin(cc),
.s (s ),
.cout(cout));

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
