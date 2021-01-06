`timescale 1ns / 1ps


module one_bit_tb;


reg aa,bb;
wire c,d,e,f;

one_bit u_inv(
.a (aa ),
.b(bb),
.c(c),
.d (d ),
.e(e),
.f(f)
);


initial aa = 1'b0;
initial bb=1'b0;


always aa = #200 ~aa;
always bb=#100 ~bb;

initial begin
	#1000
	$finish;
end

endmodule
