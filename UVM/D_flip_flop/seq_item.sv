
`include "uvm_macros.svh"
`include "uvm_pkg.sv"

import uvm_pkg::*;

class seq_item extends uvm_sequence_item;

  rand bit reset;
   reg d;
  rand bit q;

  function new(string name = "seq_item");
    super.new(name);
  endfunction

  `uvm_object_utils_begin(seq_item)
    `uvm_field_int(reset, UVM_ALL_ON)
    `uvm_field_int(d, UVM_ALL_ON)
    `uvm_field_int(q, UVM_ALL_ON)
  `uvm_object_utils_end

endclass

