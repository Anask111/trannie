module fig1(y,a,b,c,d);
        output y;
        input a,b,c,d;
        wire w1,w2;
        and x1(w1,a,b);
        and x2(w2,c,d);
        xor x3(y,w1,w2);
        endmodule
        
        module fig1_tb;
          wire y;
        reg a,b,c,d;
           fig1 i_fig1(y,a,b,c,d);
initial
  begin
  a ='b0;
  b ='b0;
  c ='b0;
  d ='b0;
  
end
 always #20 a=~a;
 always #30 b=~b;
 always #40 c=~c;
 always #50 d=~d;
  
         endmodule
          