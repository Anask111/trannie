module FA (s,c,a,b,ci);
	output s,c ;
	input a,b,ci;
	wire w1,w2,w3;
	HA HA1(w1,w2,b,ci);
	HA HA2(s,w3,a,w1);
	or a1(c,w2,w3);
endmodule

module FA_tb;
  wire s,c;
  reg  a,b,ci;
  FA i_FA(s,c,a,b,ci);
  initial 
  begin
  a=1'b1;
  b=1'b1;
  ci=1'b1;
end
 always #5  a=~a;
 always #10 b=~b;
 always #15 ci=~ci; 
  initial #200 $finish;
endmodule
