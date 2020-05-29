`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/23/2020 05:18:35 PM
// Design Name: 
// Module Name: memory
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


module memory(input clk, input Hyrja, output Dalja
    );
    wire[15:0] Hyrja;
    //Dalja deklarohet si reg (jo si wire) pasi gjithcka ne bllokun always duhet te jete reg
    reg[15:0] Dalja;
    //rezervimi i adresave memorike
    reg[15:0] instrMemory[127:0];
    initial $readmemh("instrMem.mem", instrMemory);
    always @ (posedge clk)
    begin
        assign Dalja = instrMemory[Hyrja];    
    end
endmodule
