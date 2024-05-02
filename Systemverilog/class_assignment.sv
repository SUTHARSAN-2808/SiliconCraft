//Class Assignment
class transaction;
  bit [9:0]data;
  function void display();
    $display(data);
  endfunction
endclass

module assignment;
  initial begin
    transaction good,bad;
    good=new();
    bad=good;
    good.data=16;
    good.display();
    bad.display();
    bad.data=11;
    bad.display();
    good.display();
  end
endmodule
