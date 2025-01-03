module mux (y,a,b,c,d,s1,s2);
output y;
input a,b,c,d,s1,s2;
wire w1,w2,w3,w4,w5,w6;
not x1(w1,s1);
not x2(w2,s2);
and x3(w3,a,w1,w2);
and x4(w4,b,s1,w2);
and x5(w5,c,s2,w1);
and x6(w6,d,s1,s2);
or x7(y,w3,w4,w5,w6);
endmodule

module mux_tb;
  reg S1,S2;
  reg[1:0] A;
    reg[1:0] B;
      reg[1:0] C;  reg[1:0] D;
  wire Y;
  mux i_mux(Y ,A,B,C,D,S1,S2);
 
  initial
  begin
  A ='b00;
  B ='b01;
  C ='b10;
  D ='b11;
  S1='b0;
  S2='b0;
end
 /*always #5 S1=~S1;
  always #10 S2=~S2;
always #20
initial 
begin
  A=~A;
  B=~B;
  C=~C;
  D=~D;
  end */
   always #5 S1=~S1;
  always #10 S2=~S2;
initial #200 $finish;
endmodule
