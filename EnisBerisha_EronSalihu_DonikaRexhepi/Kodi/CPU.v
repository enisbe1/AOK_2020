`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/25/2020 09:58:59 PM
// Design Name: 
// Module Name: CPU
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


module CPU(
input clk,
output pcFill,
output RegDst,
output AluSrc,
output MemToReg,
output RegWrite,
output MemRead,
output MemWrite,
output AluOp,
output opcode
    );
    wire clk;
    reg [15:0] pcFill;
    wire RegDst;
    wire AluSrc;
    wire MemToReg;
    wire RegWrite;
    wire MemRead;
    wire MemWrite;
    wire AluOp;
    wire [1:0] opcode;
    wire cout;
    wire[15:0] pcOut;
    
    initial
    begin
    pcFill=16'd10;
    end
    always @(posedge clk)
    begin
    pcFill=pcOut;
    end
    add16_bit shto(pcFill,pcOut);
    DataPath CPU_DP( clk, pcFill, RegDst, AluSrc, MemToReg , RegWrite , MemRead , MemWrite,  AluOp, opcode);
    controlli CPU_c(opcode, RegDst, AluSrc, MemToReg , RegWrite , MemRead , MemWrite, AluOp);
    
    
endmodule
