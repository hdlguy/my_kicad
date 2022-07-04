module top(
    input   logic               clk,
    output  logic[3:0][7:0]     pmod,
    output  logic[7:0]          led
);

    localparam int Ncount = 32;
    logic[Ncount-1:0] count;
    logic[4:0] index;
    always_ff @(posedge clk) begin
        count <= count - 1;
        pmod[3] <= count[Ncount-1:Ncount-8];
        pmod[2] <= count[Ncount-1:Ncount-8];
        pmod[1] <= count[Ncount-1:Ncount-8];
        pmod[0] <= count[Ncount-1:Ncount-8];
        led     <= count[Ncount-1:Ncount-8];
    end

endmodule
