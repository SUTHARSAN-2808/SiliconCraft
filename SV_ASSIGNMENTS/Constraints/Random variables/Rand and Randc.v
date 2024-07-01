//rand function and randc function
class rand_fun;
  rand bit [3:0]a;
  randc logic[2:0]b; //randc give rand values and repeats on completing one cycle
endclass

module ab;
  rand_fun rf;
  initial begin
    rf=new();
    for(int i=0;i<20;i=i+1)begin
      rf.randomize();
      $display("Randomized value of a is=%d & Randomized value of b is%d ",rf.a,rf.b);
    end
  end
endmodule
