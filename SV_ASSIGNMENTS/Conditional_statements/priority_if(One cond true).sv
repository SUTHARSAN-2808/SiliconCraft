// priority if conditional statement is same as the if else statement when only one conditional expression is true . 

module priorityif_1;
int a; 
byte b;
int c;
initial begin 
 
 a = 10;
 b= 12; 
 c=13;  
 priority if (a == $bits(a))begin 
   $display ("Inside the priority if block");
   $display ("Here , value assign to a = default size of a ");
 end 
 else if ($bits(a)== $bits(c))begin 
   $display ("Inside the first else if block ");
   $display ( " Default size of a = default size of c ");
 end 
 else if (a>b)begin 
   $display ("Inside the second else if block ");
   $display ("value of a is greater than b ");
 end 
 $display ("-----------------------------");
$display ("Out from the block ");
end 
endmodule 
