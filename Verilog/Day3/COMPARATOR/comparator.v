
module comparator(a,b,Aeqb,Agtb,Altb);
  input[3:0] a,b;
  output Aeqb,Agtb,Altb;
   reg Aeqb, Agtb, Altb;              

  always @(a or b)
    begin
      Aeqb = 0;
      Agtb = 0;
      Altb = 0;
      if(a == b )
        Aeqb=1;
      else if(a > b)
        Agtb=1;
      else
        Altb=1;
    end
endmodule

