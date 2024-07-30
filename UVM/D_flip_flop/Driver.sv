
class driver extends uvm_driver #(seq_item);

  virtual dfff vif;
  seq_item pkt;
  `uvm_component_utils(driver)

  function new(string name = "driver", uvm_component parent);
    super.new(name, parent);
  endfunction

  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    if (!uvm_config_db#(virtual dfff)::get(this, "", "vif", vif))
      `uvm_fatal(get_type_name(), "Virtual interface not set");
  endfunction

   task run_phase(uvm_phase phase);
    forever begin
      seq_item_port.get_next_item(pkt);
      `uvm_info(get_type_name(), $sformatf("reset=%0d", pkt.reset), UVM_HIGH);
      @(posedge vif.clk) begin
        vif.reset <= pkt.reset;
        vif.q <= pkt.q;
      end
      seq_item_port.item_done();
    end
  endtask

endclass

