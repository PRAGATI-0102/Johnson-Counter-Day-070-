`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/18/2023 11:11:37 PM
// Design Name: 
// Module Name: johnson_counter_tb
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


module johnson_counter_tb();
        
        parameter N =4; 
        reg clk, reset;
        wire  [N-1:0] count;
        
        johnson_counter dut (.clk(clk),.reset(reset),.count(count));
        
        initial 
        begin
            clk = 0;
            forever #5 clk = ~clk;
        end
        
        initial
        begin
            reset = 1'b1;
            #10;
            reset = 1'b0;
        end
        
        initial
        begin
            $monitor("clk = %b,reset = %b,count = %b",clk,reset,count);
            #100;
            $finish;
        end
        
endmodule
