
class rand_fun;
   bit [3:0]a;
   logic[2:0]b;
endclass

module ab;
  rand_fun rf;
  initial begin
    rf=new();
    for(int i=0;i<20;i=i+1)begin
      std::randomize(rf.a);
      $display("Randomized value of a is=%d & Randomized value of b is%d ",rf.a,rf.b);
    end
  end
endmodule
