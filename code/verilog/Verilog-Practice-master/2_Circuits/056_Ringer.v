module top_module (
    input ring,
    input vibrate_mode,
    output ringer,       // Make sound
    output motor         // Vibrate
);
    
    assign ringer = ring & (~vibrate_mode);
    assign motor = ring & vibrate_mode;

endmodule
/*always@(*) begin
        if(vibrate_mode == 0) begin
            ringer = ring;
            motor = 0;
        end
        else begin
            ringer = 0;
            motor = ring;
        end
    end
*/