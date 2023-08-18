`timescale 1ps/1ps
`include "RAM.v"
module RAMtb();
reg clk,wrEn;
reg [3:0] rdAddr,wrAddr;
reg [7:0] wrData;
wire [7:0] rdData;
RAM DUT(
    .clk(clk),
    .wrEn(wrEn),
    .rdAddr(rdAddr),
    .rdData(rdData),
    .wrAddr(wrAddr),
    .wrData(wrData)
);
initial begin
  clk=1'b0;
//   rst=1'b1;
//   #15 rst=1'b0;

end
initial forever begin
    #5 clk=~clk;
end
initial begin
    $monitor("%t,wrEn=%b,wrAddr=%b,wrData=%b,rdAddr=%b,rdData=%b",$time,wrEn,wrAddr,wrData,rdAddr,rdData);
    $dumpfile("RAM.vcd");
    $dumpvars;
end
initial begin
    #15 wrEn=0;
    #10 wrEn=1;wrAddr=0;wrData=25;
    #10 wrEn=1;wrAddr=1;wrData=26;
    #10 wrEn=1;wrAddr=2;wrData=27;
    #10 wrEn=1;wrAddr=3;wrData=28;
    #10 wrEn=1;wrAddr=4;wrData=29;
    #10 wrEn=1;wrAddr=5;wrData=30;
    #10 wrEn=1;wrAddr=6;wrData=31;
    #10 wrEn=1;wrAddr=7;wrData=32;
    #10 wrEn=1;wrAddr=8;wrData=33;
    #10 wrEn=1;wrAddr=9;wrData=34;
    #10 wrEn=1;wrAddr=10;wrData=35;
    #10 wrEn=1;wrAddr=11;wrData=36;
    #10 wrEn=1;wrAddr=12;wrData=37;
    #10 wrEn=0;rdAddr=0;
    #10 wrEn=0;rdAddr=1;
    #10 wrEn=0;rdAddr=2;
    #10 wrEn=0;rdAddr=3;
    #10 wrEn=0;rdAddr=4;
    #10 wrEn=0;rdAddr=5;
    #10 wrEn=0;rdAddr=6;
    #10 wrEn=0;rdAddr=7;
    #10 wrEn=0;rdAddr=8;
    #10 wrEn=0;rdAddr=9;
    #10 wrEn=0;rdAddr=10;
    #10 wrEn=0;rdAddr=11;
    #10 wrEn=0;rdAddr=12;
    #20 $finish;
end
endmodule