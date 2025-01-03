module demux (y1,y2,y3,y4,i,s2,s1);
output y1,y2,y3,y4;
input i,s1,s2;
wire w1,w2;
not x1(w1,s1);
not x2(w2,s2);
and x3(y1,a,w1,w2);
and x4(y2,b,s1,w2);
and x5(y3,c,s2,w1);
and x6(y4,d,s1,s2);
endmodule

module demux_tb;
  wire Y1,Y2,Y3,Y4;
  reg I,S1,S2;
  demux i_demux(Y1,Y2,Y3,Y4,I,S1,S2);
  initial
  begin
    I='b0;
    S1='b0;
    S2='b0;
  end
   always #5 S1=~S1;
   always #10 S2=~S2;
   always #5 I=~I;
  initial #200 $finish;
endmodule