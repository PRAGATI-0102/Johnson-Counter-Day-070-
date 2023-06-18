`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/18/2023 11:05:40 PM
// Design Name: 
// Module Name: johnson_counter
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


module johnson_counter #(parameter N = 4 )

        (input clk, reset,
        output reg [N-1:0] count);
        
        always@(posedge clk)
            begin
                if(reset)
                    count <= 0;
                 else
                    count <= {~count[0],count[N-1:1]};
            end
            
endmodule
