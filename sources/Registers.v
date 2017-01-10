`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/09/2017 12:24:49 PM
// Design Name: 
// Module Name: Registers
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


module Registers(
    input [511:0] CONFIG_REG,
    input [15:0] PULSE_REG,
    input CLK1,
    input RESET,
    output reg [15:0] config_reg_0,
    output reg pulse_reg_0
    );
   
 always@(posedge CLK1 or posedge RESET)
  begin
   if(RESET)
    begin
    config_reg_0<=16'b0;
    pulse_reg_0<=1'b0;
    end
   else
    begin
    config_reg_0<=CONFIG_REG[15:0];
    pulse_reg_0<=PULSE_REG[0];
    end
  end
endmodule
