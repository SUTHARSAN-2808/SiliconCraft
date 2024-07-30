class monitor extends uvm_monitor;
  
  virtual dfff vif;
  uvm_analysis_port#(seq_item)item_collect_port;
  seq_item mon;
  `uvm_component_utils(monitor)

  function new(string name="monitor",uvm_component parent);
    super.new(name,parent);
    item_collect_port=new("mon",this);
    mon=new();
  endfunction
  
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    if(!uvm_config_db#(virtual dfff)::get(null,"","vif",vif))
   `uvm_fatal(get_type_name(),"Not set at top level"); 
  endfunction
   
     task run_phase(uvm_phase phase);
      @(posedge vif.clk)begin
     
       mon.d<=vif.d;
      end
      item_collect_port.write(mon);
      
    endtask                                      
                                         
endclass
