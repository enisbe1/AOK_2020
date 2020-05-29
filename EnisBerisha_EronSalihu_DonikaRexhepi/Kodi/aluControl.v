`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/23/2020 03:32:23 PM
// Design Name: 
// Module Name: aluControl
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


module aluControl(
input AluOp,input Funksioni,output AluControl
    );
 wire  AluOp;  
 wire [4:0] Funksioni;  
 reg [2:0] bitat;
 reg bnegate;
 reg[3:0] AluControl;  
wire [5:0] AluControlHyrja; 
 assign AluControlHyrja = {AluOp,Funksioni};  
 always @(AluControlHyrja)  
if(AluOp==1'b0)
AluControl=4'b0100;

else
begin
case (Funksioni)
// dhe logjike 
5'b00001:
AluControl=4'b0000;

// ose logjike
5'b00010:
AluControl=4'b0010;

//XOR
5'b00011: 
AluControl=4'b0011;

//Mbledhja imediate ose normale per ADD 
5'b00100:
AluControl=4'b0100;

//Zbritja
5'b00111: 
AluControl=4'b1100;

//zhvendosja majtas
5'b01000:
AluControl=4'b0001;

// zhvendosja djathtas
5'b01001:
AluControl=4'b0110;

// Shumezimi  
5'b10000:
AluControl=4'b0111;

//Mbledhja per Addi
default:
AluControl=4'b0101;

endcase
end

endmodule
