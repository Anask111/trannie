module nand1(out,in1,in2);
output out;
input in1,in2;
supply1 power;
supply0 ground;
wire w1;
pmos p1(out,power,in1);
pmos p1(out,power,in2);
nmos n1(out,w1,in1);
nmos n1(w1,ground,in2);
endmodule

module nand1_tb;
  wire out;
  reg   in1,in2;
  nand1 nand2(out,in1,in2);
  initial
  begin
    in1=1'b0;
    in2=1'b0;
  end
  always  #5 in1=~in1;
  always  #5 in2=~in2;
  initial #500 $finish;
endmodule 
