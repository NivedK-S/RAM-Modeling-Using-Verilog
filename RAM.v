module RAM(
    input clk,
    input wrEn,
    input [3:0] wrAddr,
    input [7:0] wrData,
    input [3:0] rdAddr,
    output reg [7:0] rdData
);
reg [7:0] mem[15:0];
always @(posedge clk) begin
    if(wrEn)
    mem[wrAddr]<=wrData;
end
always @(posedge clk) begin
    rdData<=mem[rdAddr];
end

endmodule