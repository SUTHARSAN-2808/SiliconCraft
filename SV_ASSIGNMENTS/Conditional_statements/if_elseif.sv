module if_elseif;
int a,b,c;
initial begin 
 a = 10;
 b = 12;
 c = 13;
 
 if (a>b)begin 
   $display ("Successfully enters into if block ");
   $display ("Value of a < b");
   
 end 
 else if (b<c)begin 
   $display ("Successfully enters into else if block ");
   $display ("value of b<c");
  
   end
   else if (c<0) begin 
     $display ("Successfully enters into second elseif block ");
     $display ("c is a negative number ");
   
   end 
   $display ("Out from ladder block");

 end 
 endmodule 
 
