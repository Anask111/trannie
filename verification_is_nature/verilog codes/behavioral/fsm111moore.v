module fsm111moore (z,x,rst,clk);
output reg z;
input x,rst,clk;
parameter s0=2'b00,s1=2'b01,s2=2'b10,s3=2'b11;
reg [1:0] ps,ns;
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
			ns=s0;
			else
			ns=s2;
		s2:if(x==1'b0)
			ns=s0;
			else
			ns=s3;
		s3:if(x==1'b0)
			ns=s0;
			else
			ns=s1;
		endcase	
	end		
endmodule 

				module fsm111moore_tb;
				wire z;
				reg x,rst,clk;
				fsm111moore i_fsm111moore2(z,x,rst,clk);
				  
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
				always #1 x= ~x;
				initial #3000 $finish;
					 endmodule