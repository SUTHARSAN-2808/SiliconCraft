
module priorityif_2;
int a,b,c;
initial begin 
  a = 10;
  b =20;
  c = 30;

priority if (a>b)begin 
  $display ("Inside the priority if block ");
  $display (" a <b");
end 
else if ( b <c )begin 
  $display ("Inside the first else if block");
  $display ("b<c");
end 
else if (a <c )begin 
  $display ("Inside the second else if block ");
  $display ( "a < c ");
end 
$display ("Out from the conditional block ");

end 
endmodule 
