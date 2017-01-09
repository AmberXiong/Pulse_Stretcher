`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/05/2017 04:29:44 PM
// Design Name: 
// Module Name: Trigger_Catcher
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


module Trigger_Catcher(
    input rst,
    input clk,
    input pulse_reg,
    output reg trigger
    );  
 reg trig_tmp1, trig_tmp2, trig_tmp3;
 
 always@(posedge clk or posedge rst)
  if(rst)
   begin
    trig_tmp1<=1'b0;
    trig_tmp2<=1'b0;
    trig_tmp3<=1'b0;
    trigger<=1'b0;
   end
  else
   begin
    trig_tmp1<=pulse_reg;
    trig_tmp2<=trig_tmp1;
    trig_tmp3<=trig_tmp2;
    if(trig_tmp2==1'b1&&trig_tmp3==1'b0)
     begin
      trigger<=1'b1;
     end
    else
      begin
      trigger<=1'b0;
      end
   end
endmodule
