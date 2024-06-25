//packed structure
struct packed {byte proof;
        bit [7:0] id;
        logic [7:0] address;
       } employee_details;

module emp;
  initial begin
    employee_details ='{00000000,00010000,0000001};
  $display(employee_details);
  end
endmodule
