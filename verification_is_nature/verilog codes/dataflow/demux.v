module demux (y1,y2,y3,y4,i,s2,s1);
	output y1,y2,y3,y4;
	input i,s1,s2;
	assign y1 = i&~s1&~s2 ;
	assign y2 = i&~s1&s2 ;
	assign y3 = i&s1&~s2 ;
	assign y4 = i&s1&s2 ;
endmodule

module demux_tb;
  wire Y1,Y2,Y3,Y4;
  reg I,S1,S2;
  demux i_demux(Y1,Y2,Y3,Y4,I,S1,S2);
  initial
  begin
  $monitor("At time %0t - I=%b, Y1=%b , Y2=%b , Y3=%b,Y4=%b ",$time,Y1,Y2,Y3,Y4,I,S1,S2);
    I='b0;
    S1='b0;
    S2='b0;
  end
   always #5 S1=~S1;
   always #10 S2=~S2;
   always #10 I=~I;
  initial #200 $finish;
endmodule