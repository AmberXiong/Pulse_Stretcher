`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/06/2017 12:11:24 PM
// Design Name: 
// Module Name: pulse_stretcher_tb
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


module pulse_stretcher_tb();
 reg pulse_reg;
 reg clk;
 reg rst;
 reg[15:0] config_reg;
 wire pulse_out;
 
 pulse_stretcher DUT_0(
    .clk(clk),
    .rst(rst),
    .pulse_reg(pulse_reg),
    .config_reg(config_reg),
    .pulse_out(pulse_out)   
    );
 
 initial begin
  $dumpfile("pulse.dump");
  $dumpvars(0, pulse_stretcher);
 end  
 
 initial begin
  clk=0;
  forever #20 clk=~clk;
 end
 
 initial begin
  rst=0;
  #50 rst=1;
  #50 rst=0;
 end
 
 initial begin
 pulse_reg=0;
 #200 pulse_reg=1;
 #50 pulse_reg=0;
 #580 pulse_reg=1;
 #50 pulse_reg=0;
 #500 pulse_reg=1;
 #50 pulse_reg=0;
 end
 
 initial begin
 config_reg=4'o0007;
 #750 config_reg=config_reg+1'b1;
 #620 config_reg=16'o1001;
 end
 
endmodule
