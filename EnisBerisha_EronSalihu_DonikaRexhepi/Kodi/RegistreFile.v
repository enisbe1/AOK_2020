`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/23/2020 04:16:02 PM
// Design Name: 
// Module Name: RegistreFile
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


module RegistreFile(input RS,
input RT,
input RD,
input WriteData,
input we, 
input clk,
output RD1,
output RD2
    );
    //8 regjistra 16 bitesh
    reg[15:0] Registers[7:0];
    //hyrja per RS 3 biteshe per percaktim te regjistrit
    wire[2:0] RS;
    wire[2:0] RT;
    wire[2:0] RD;
    //Te dhenat per tu shkruar ne RegisterFile
    wire[15:0] WriteData;
    //WriteEnable
    wire we;
    //Clock
    wire clk;

    

    //Dy daljet e Register File ReadData1 dhe ReadData2
    wire [15:0] RD1;
    wire [15:0] RD2;

    

always @ (negedge clk)
begin
if(we==1'b1)
    Registers[RD] <= WriteData;

    
end
always @*
if(RS==3'b000 && RT==3'b000)
begin
Registers[RS]=16'd0;
Registers[RT]=16'd0;
end
else if (RS==3'b000)
Registers[RS]=16'd0;
else if (RT==3'b000)
Registers[RT]=16'd0;

 assign RD1 = Registers[RS];
 assign RD2 = Registers[RT];


endmodule
