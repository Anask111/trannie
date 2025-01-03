module dl(q,p,s,clk);
	output reg q,p;
	input s,clk;
		always @ (clk)
		begin
		if ({s}==1'b1)
		begin
		q=s;
		p=~q;
		end
		end
	endmodule
	
	module dl_tb;
	  wire q,p;
	  reg clk,s;
	  dl i_dl(q,p,s,clk);
	  initial
	  begin
	  $monitor("At time %0t -  q=%b , p=%b,s=%b,clk=%b ",$time,q,p,s,clk);
	    s=1'b0;
	    clk=1'b1;
	    end
	    always #1 clk=~clk;
	    always #7 s=~s;
	    initial #50 $finish;
	    endmodule