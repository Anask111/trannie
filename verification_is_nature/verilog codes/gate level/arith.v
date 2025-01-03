module arith (s,c,an,o,di,bo,a,b,ci,ei);
	output s,c,o, di,bo,an ;
	input a,b,ci,ei;
	wire w1,w2,w3,w11,w12,w13,w14;
	not m7(w14,a);
	xor x1(s,a,b);
	and x3(w1,a,b);
	and x4(w2,ci,a);
	and x5(w3,ci,b);
	or  x6(c,w1,w2,w3);
		xor m1(s,a,b);
	and m3(w11,w14,b);
	and m4(w12,ei,w14);
	and m5(w13,ei,b);
	or  m6(di,w11,w12,w13);
	and m8(an,a,b);
	or  m9(o,a,b);
endmodule

module arith_tb;
  wire s,c,o, di,bo,an ;
  reg  a,b,ci,ei;
  arith i_arith(s,c,an,o,di,bo,a,b,ci,ei);
  initial 
  begin
  a='b1;
  b='b1;
  ci='b1;
  ei='b1;
end
 always #5  a=~a;
 always #10 b=~b;
 always #15 ci=~ci; 
 always #20 ei=~ei;
  initial #800 $finish;
endmodule
