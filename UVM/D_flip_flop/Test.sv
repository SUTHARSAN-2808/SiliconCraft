`include "seq_item.sv"
`include "sequence.sv"
`include "Environment.sv"


class test extends uvm_test;

  environment env;
       sequ seq;
  `uvm_component_utils(test)

  function new(string name = "test", uvm_component parent);
    super.new(name, parent);
  endfunction

  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    env = environment::type_id::create("env", this);
  endfunction

  task run_phase(uvm_phase phase);
    phase.raise_objection(this);
    `uvm_info(get_type_name(), "TEst sequence", UVM_HIGH);
    seq = sequ::type_id::create("seq");
    repeat (2) begin
      #5 seq.start(env.agt.seqr);
      #400;
    end
    phase.drop_objection(this);
  endtask

endclass

