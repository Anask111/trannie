//module counter(y,tc,a,clk,ret,load,pre);
//output reg [3:0]y;
//output reg tc =1'b0;
//input [3:0]a;
//input clk,ret,pre,load;
//
//always @(posedge clk)
//begin
//	if (ret==1)
//	y=4'b0000;
//	else if (pre==1)
//	y=4'b1111;
//	else if (load==1)
//	y=a;
//	else  (load==0)
//	y=y+1;
//	
//	end
//	
//		always @(y)
//		begin
//		if (y==4'b1111)
//		tc =1'b1;
//		else
//		tc =1'b0;
//		end
//	endmodule
//	
		module countera_tb;
	wire [3:0]y;
wire tc;
reg [3:0]a;
reg clk,ret,pre,load;
	  integer i;
	  counter i_countera(y,tc,a,clk,ret,load,pre);
	  initial
	  begin
	  $monitor("At time %0t - y=%b,tc=%b , a=%b , clk=%b ,ret=%b , load=%b , pre=%b",$time,y,tc,a,clk,ret,load,pre);
	   a[3:0] = 4'b0001;
		 end
		initial
		begin 
		clk=1'b0;
		pre=1'b0;
		ret=1'b0;
		load=1'b0;
		end
		initial #10 load=1'b1;
		initial #20 load=1'b0;
		initial #800 ret=1'b1;
		initial #500 pre=1'b1;
		always #10 clk =~clk;
	    always #1000 $finish;
  endmodule