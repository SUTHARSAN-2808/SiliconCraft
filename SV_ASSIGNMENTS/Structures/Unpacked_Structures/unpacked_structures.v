//unpacked structure
struct { string name;
        reg [7:0] id;
        logic [7:0] address;
       } employee_details;

module emp;
  initial begin
  employee_details ='{"Great",76989,2430};
  $display(employee_details);
  end
endmodule
