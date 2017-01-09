`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/05/2017 07:31:27 PM
// Design Name: 
// Module Name: pulse_stretcher
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


module pulse_stretcher(
      input clk,
      input rst,
      input pulse_reg,
      input config_reg,
      output pulse_out
      );
 wire pulse_reg;
 wire [15:0] config_reg;
 wire rst;
 wire clk;
 wire pulse_out;
 wire trigger;
 
 Trigger_Catcher trigger_catcher_0(
      .clk(clk),
      .rst(rst),
      .pulse_reg(pulse_reg),
      .trigger(trigger)
      );
      
 Pulse_Generator pulse_generator_0(
      .clk(clk),
      .rst(rst),
      .trigger(trigger),
      .config_reg(config_reg),
      .pulse_out(pulse_out)
      );
endmodule
