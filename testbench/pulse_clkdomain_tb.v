`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/09/2017 01:59:25 PM
// Design Name: 
// Module Name: pulse_clkdomain_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module pulse_clkdomain_tb();
 reg CLK1;
 reg CMD_FIFO_EMPTY;
 reg [35:0] CMD_FIFO_Q;
 reg clk2;
 reg RESET;
 wire pulse_out;
 
 Pulse_clkdomain DUT0(
     .RESET(RESET),
     .CLK1(CLK1),
     .CMD_FIFO_EMPTY(CMD_FIFO_EMPTY),
     .CMD_FIFO_Q(CMD_FIFO_Q),
     .clk2(clk2),
     .pulse_out(pulse_out)
     );

initial begin
 $dumpfile("clkdomain.dump");
 $dumpvars(0, Pulse_clkdomain);
end

initial begin
CLK1=0;
forever #10 CLK1=~CLK1;
end

initial begin
clk2=0;
forever #20 clk2=~clk2;
end

initial begin
RESET=0;
#100 RESET=1;
#50 RESET=0;
end

initial begin
CMD_FIFO_EMPTY=1;
#300 CMD_FIFO_EMPTY=0;
#1000 CMD_FIFO_EMPTY=1;
end

initial begin
CMD_FIFO_Q=36'b0;
#200 CMD_FIFO_Q=36'b000000000_000001000_000000000_000000100;
#400 CMD_FIFO_Q=36'b000000000_000000010_110000000_000000001;
end
    
endmodule
