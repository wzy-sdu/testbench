module fetch (clock, reset, state, pc, npc, rd, taddr, br_taken);
    input clock, reset, br_taken;
    input [15:0] taddr;
    input [3:0] state;
    output [15:0] pc, npc;
    output rd;
    //protected
    
endmodule