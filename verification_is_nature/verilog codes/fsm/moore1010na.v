module moore1010na (z,x,rst,clk);
output reg z;
input x,rst,clk;
parameter s0=2'b000,s1=2'b001,s2=2'b010,s3=2'b011,s4=2'b100;
reg [2:0] ps,ns;
always @ (posedge clk)
begin
	if(rst==1'b1)
		ps=s0;
	else
		ps=ns;
end
always @ (ps)
begin
	if(ps==s3)
		z=1'b1;
	else
		z=1'b0;
end
always @(ps or x)
begin
	case(ps)
		s0:if(x==1'b0)
			ns=s0;
			else
			ns=s1;
		s1:if(x==1'b0)
			ns=s2;
			else
			ns=s1;
		s2:if(x==1'b0)
			ns=s0;
			else
			ns=s3;
		s3:if(x==1'b0)
			ns=s4;
			else
			ns=s1;
		s4:if(x==1'b0)
			ns=s0;
			else
			ns=s1;
		endcase	
	end		
endmodule 

				module moore1010na_tb;
				wire z;
				reg x,rst,clk;
				moore1010na moore1010na2(z,x,rst,clk);
				  
				  initial 
				  begin
					 $monitor("At time %0t - z=%b, x=%b,  rst=%b , clk=%b ",$time,z,x,rst,clk);
				  clk=1'b0;
				  rst=1'b1;
				  x=1'b0;
				  #8;
				  rst=1'b0;
					end
			
				always #1 clk= ~clk;
				always #2	 x= $random;
				initial #3000 $finish;
					 endmodule