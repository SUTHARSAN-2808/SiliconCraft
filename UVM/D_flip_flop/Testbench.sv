`include "Test.sv"
`include "Interface.sv"

// `include "uvm_macros.svh"
// `include "uvm_pkg.sv"

// import uvm_pkg::*;

module tb;

  test sample;
  dfff vif();
  dff dut (
    .clk(vif.clk),
    .reset(vif.reset),
    .d(vif.d),
    .q(vif.q)
  );

  initial begin
    sample = test::type_id::create("sample",null);
     uvm_config_db#(virtual dfff)::set(null, "", "vif", vif);
    run_test("sample");
  end

  always #5 vif.clk = ~vif.clk;

  initial begin
    vif.clk = 1'b0;
//     #300 $finish;
  end

endmodule


