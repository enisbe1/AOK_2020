`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/23/2020 05:31:43 PM
// Design Name: 
// Module Name: dataMemory
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


module dataMemory(input AdresaNeHyrje,
  input WriteData,
  input MemWrite,
  input MemRead,
  input clk,
  output [15:0] ReadData
    );
    wire[15:0] AdresaNeHyrje;
    wire[15:0] WriteData;

    wire MemWrite;
    wire MemRead;
    wire clk;
    reg[15:0] DataMemory[127:0];
    //lexo filen ne hex
initial $readmemh("dataMem.mem", DataMemory);
 
always @ (posedge clk)
begin
//me shkruajt ne datamemory
if( MemWrite)
    begin
        DataMemory[AdresaNeHyrje] <= WriteData;
    end
    end
  assign  ReadData=(MemRead==1'b1) ? DataMemory[AdresaNeHyrje] : 16'd0;


    
endmodule
