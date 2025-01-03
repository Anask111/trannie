module comp(x,y,z,a,b);
	output x,y,z;
	input a,b;
	wire w1,w2;
	not s1(w1,a);
	not s2(w2,b);
	and s3(x,w1,b);
	and s4(y,w2,a);
	and s5(z,a,b);
	endmodule
	
	module comp_tb;
	  wire x,y,z;
	  reg a,b;
	  comp i_comp(x,y,z,a,b);
	  initial
	  begin
	    a='b0;
	    b='b0;
	    end
	    always #5 a=~a;
	    always #10 b=~b;
	    always #300 $finish;
	    endmodule