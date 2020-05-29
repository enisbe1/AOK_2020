`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/23/2020 05:19:01 PM
// Design Name: 
// Module Name: memory_tb
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


module memory_tb(
    );
    reg clk;
reg[15:0] Hyrja;
wire[15:0] Dalja;
reg[15:0] instrMemory[127:0];

initial $monitor("Hyrja=%d, Dalja=%d", Hyrja, Dalja);

initial
begin
#0 clk = 1'b1; Hyrja=16'd9; clk = 1'b0;
#5 clk=1'b1;
#10 Hyrja=16'd10; clk=1'b0;
#10 $stop;
end 

memory instrMem(clk, Hyrja, Dalja);
endmodule
