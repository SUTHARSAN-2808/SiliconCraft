`include "Agent.sv"

class environment extends uvm_env;

  `uvm_component_utils(environment)
  agent agt;

  function new(string name = "environment", uvm_component parent);
    super.new(name, parent);
  endfunction

  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    agt = agent::type_id::create("agt", this);
  endfunction

endclass

