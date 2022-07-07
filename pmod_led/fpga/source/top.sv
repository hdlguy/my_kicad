module top(
    input   logic               clk,
    output  logic[3:0][7:0]     pmod,
    output  logic[7:0]          led
);

    localparam int Ncount = 25;
    logic[Ncount-1:0] count;
    logic[31:0] shreg = 32'hff_ff_ff_fe;
    logic[7:0] ledcnt = 0;
    
    always_ff @(posedge clk) begin

        count <= count - 1;

        if (0 == count) begin
            shreg <= {shreg[0], shreg[31:1]};
            ledcnt <= ledcnt + 1;
        end

        pmod <= shreg;
        led  <= ledcnt;

    end

endmodule
