
class sequ extends uvm_sequence#(seq_item);

  `uvm_object_utils(sequ)
  seq_item pkt;

  function new(string name = "sequ");
    super.new(name);
  endfunction

   task body();
    forever begin
      `uvm_info(get_type_name(), "Starting sequence", UVM_HIGH);
      pkt = seq_item::type_id::create("pkt");
      `uvm_do(pkt)
    end
  endtask

endclass

