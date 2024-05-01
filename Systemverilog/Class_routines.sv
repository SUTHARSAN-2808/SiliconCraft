//Class routines
class students;
  int marks,age;
  function void display();
    $display(marks,age);
  endfunction
endclass

class emp;
  int salary;
  function void print();
    $display(salary);
  endfunction
endclass

module datas;
  initial begin
    students akash=new();
    emp jai=new();
    akash.marks=93;
    akash.age=19;
    jai.salary=20000;
    akash.display();
    jai.print();
  end
endmodule
