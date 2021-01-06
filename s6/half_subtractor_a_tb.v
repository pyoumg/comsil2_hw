`timescale 1ns / 1ps


module half_subtractor_a_tb;

reg aa,bb;
wire d,b;

half_subtractor_a u_inv(
.A(aa),
.B(bb),
.D(d),
.b(b)
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
