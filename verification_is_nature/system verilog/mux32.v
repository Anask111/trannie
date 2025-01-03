module muxr4 (y2,a,b,c,d,s,s1,s2,s3,f,f1,f2);
output y2;
input [7:0] a,b,c,d;
input [3:0]s,s1,s2,s3;
input f,f1,f2;
wire [2:0] y,y1;

//assign y = s1?(s0:d:c):(s0?b:a);
// 8:1 mux
assign y[0] =s[2]?(s[1]?(s[0]? a[0]:a[1] ):( s[0]? a[2]:a[3] )):(s[1]? (s[0]? a[4]:a[5]):( s[0]? a[6]:a[7]));
// 8:1 mux
assign y[1] =s1[2]?(s1[1]?(s1[0]? b[0]:b[1] ):( s1[0]? b[2]:b[3] )):(s1[1]? (s1[0]? b[4]:b[5]):( s1[0]? b[6]:b[7]));
// 16:1 mux
assign y[2] =f?y[0]:y[1];
// 8:1 mux
assign y1[0] =s2[2]?(s2[1]?(s2[0]? c[0]:c[1] ):( s2[0]? c[2]:c[3] )):(s2[1]? (s2[0]? c[4]:c[5]):( s2[0]? c[6]:c[7]));
// 8:1 mux
assign y1[1] =s3[2]?(s3[1]?(s3[0]? d[0]:d[1] ):( s3[0]? d[2]:d[3] )):(s3[1]? (s3[0]? d[4]:d[5]):( s3[0]? d[6]:d[7]));
// 16:1 mux
assign y1[2] =f1?y1[0]:y1[1];
// 32:1 mux
assign y2 =f2?y[2]:y1[2];

endmodule

module muxr4_tb;
  wire y2;
reg [7:0] a,b,c,d;
reg [3:0]s,s1,s2,s3;
reg f,f1,f2;
//wire [2:0] y,y1;
  muxr4 i_muxr4(y2,a,b,c,d,s,s1,s2,s3,f,f1,f2);
 
  initial
  begin
 // $monitor("At time %0t - a=%b, b=%b ,c=%b, d=%b , y=%b,s1=%b,s2=%b ",$time,y,a,b,c,d,s1,s2);
  a =8'b10000000;
  b=8'b10010000;
  c =8'b10000110;
  d=8'b10110000;
  
  s1=4'b0101;
  s2=4'b0101;
   s=4'b0101;
  s3=4'b0101;
   f =1'b1;
  f1 =1'b1;
  f2 =1'b1;
end

   always #1 a=~a;
  always #2 b=~b;
 always #3 c=~c;
  always #4 d=~d;
  always #5 f=~f;
 always #6 f1=~f1;
  always #7 f2=~f2;
    always #8 s=~s;
always #10 s3=~s3;
   always #11 s1=~s1;
always #12 s2=~s2;

initial #200$finish;
endmodule
