`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/05/2017 05:07:08 PM
// Design Name: 
// Module Name: Pulse_Generator
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


module Pulse_Generator(
    input clk,
    input rst,
    input trigger,
    input [15:0] config_reg,
    output reg pulse_out
    );
 reg [15:0] count;
 reg [1:0] current_state, next_state;
 parameter s0=2'b01;
 parameter s1=2'b10;
 //parameter s2=3'b100;
 
 always@(posedge clk)
  begin
  if(rst)
   begin
    current_state<=s0;
   end
  else
   begin
    current_state<=next_state;
   end
  end
  
 always@(current_state or trigger or count or config_reg or rst)
  begin
   if(rst)
    begin
     count=16'b0;
     pulse_out=1'b0;
     next_state=s0;
    end
   else
    begin
     case(current_state)
      s0:next_state=(trigger==1)?s1:s0;     //wait for trigger
      s1:next_state=(count==config_reg)?s0:s1;
      default:next_state=s0;   
     endcase
    end
  end   
  
 always@(posedge clk or posedge rst)
 begin
  if(rst)
   begin
   count<=16'b0;
   pulse_out<=0;
   end   
  else
   begin
    case(next_state)
     s0:
        begin
        count<=16'b0;
        pulse_out<=1'b0;
        end
     s1:
        begin
        count<=count+1'b1;
        pulse_out<=1'b1;
        end
     default:
             begin
             count<=16'b0;
             pulse_out<=1'b0;
             end
    endcase
   end
 end
       
endmodule
