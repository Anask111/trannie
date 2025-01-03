module greytobin(b,g);
	output reg [3:0]b;
	input [3:0]g;
	always @(g) 
	   begin
		if ({g} == 4'b0000)
		{b }= 4'b0000;
		
		else if ({g} == 4'b0001)
		{b }= 4'b0001;
		
		else if ({g} == 4'b0010)
		{b }= 4'b0011 ;
		
		else if ({g} == 4'b0011)
		{b }= 4'b0010;
		
			else if ({g} == 4'b0100)
		{b }= 4'b0100;
		
		else if ({g} == 4'b0101)
		{b }=4'b0101;
		
		else if ({g} == 4'b0110)
		{b}= 4'b0111 ;
		
		else if ({g} == 4'b0111)
		{b }= 4'b0110;
		
			else if ({g} == 4'b1000)
		{b}= 4'b0000;
		
		else if ({g} == 4'b1001)
		{b }= 4'b1100;
		
		else if ({g} == 4'b1010)
		{b }= 4'b1101 ;
		
		else if ({g}== 4'b1011)
		{b }= 4'b1111;
		
		else	if ({g} == 4'b1100)
		{b }= 4'b1000;
		
		else if ({g} == 4'b1101)
		{b}= 4'b1011;
		
		
		else if ({g} == 4'b1111)
		{b }= 4'b1010;
		
		else 
		{b} = 4'b0000;
		
	end
endmodule
	
	module greytobin_tb;
	  reg [3:0]g;
	  wire [3:0]b;
	  integer i;
	  greytobin i_greytobin(b,g);
	  initial
	  begin
	  $monitor("At time %0t - g=%b , b=%b ",$time,g,b);
	   g[3:0] = 4'b0000;
		 end
		initial
		begin 
			for (i=0;i<16; i=i+1)
			begin
			{g}=i;
			#5;
			end
		end
	    always #100 $finish;
  endmodule