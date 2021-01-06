`timescale 1ns / 1ps


module half_adder_a_tb;

reg aa,bb;
wire c,s;

half_adder_a u_inv(
.a(aa),
.b(bb),
.c(c),
.s(s)
    );
initial aa=1'b0;
initial bb=1'b0;
always aa = #200 ~aa;
always bb=#100 ~bb;
initial begin
	#1000
	$finish;
end


endmodule
