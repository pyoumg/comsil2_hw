`timescale 1ns / 1ps

module de_morgan_1_b_tb;
reg aa,bb;
wire c;

de_morgan_1_b u_inv(
.a(aa),
.b(bb),
.c(c)
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
