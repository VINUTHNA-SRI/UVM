import uvm_pkg::*;
`include "uvm_macros.svh"

class example extends uvm_object;
  string b;
  bit [2:0]c;

  `uvm_object_utils(example)

  function new(string name="example");
    super.new(name);
    this.b="HELLO";
    this.c=4;

  endfunction

  function string convert2string();
    string s=" ";
    $sformat(s,"%s b = %s",s,b);
    $sformat(s,"%s c = %0h",s,c);
    return s;
  endfunction

endclass

