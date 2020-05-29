`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/25/2020 10:07:29 PM
// Design Name: 
// Module Name: CPU_tb
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


module CPU_tb(
    );
    reg clk;
    wire [15:0] pcFill;
     wire RegDst;
    wire AluSrc;
    wire MemToReg;
    wire RegWrite;
    wire MemRead;
    wire MemWrite;
    wire AluOp;
    wire [1:0] opcode;
    initial
    $monitor ("clk=%b,pcFill=%b,RegDst=%b,AluSrc=%b,MemToReg=%b,RegWrite=%b,MemRead=%b,MemWrite=%b,AluOp=%b",
    clk,pcFill,RegDst, AluSrc, MemToReg , RegWrite , MemRead , MemWrite,  AluOp, opcode);
    
    initial 
    begin
    #10 clk=0;
    #10 clk=1;
    #10 clk=0;
    #10 clk=1;
    #10 clk=0;
    #10 clk=1;
    #10 clk=1;
    #10 clk=0;
    #10 clk=1;
    #10 clk=0;
    #10 clk=1;
    #10 clk=0;
    #10 clk=1;
    #10 clk=0;
    #10 clk=1;
    #10 clk=0;
    #10 clk=1;
    #10 clk=0;
    #10 clk=1;
    #10 clk=0;
    #10 clk=0;
    #10 clk=1;
    #10 clk=0;
    #10 clk=1;
    #10 clk=0;
    #10 clk=1;
    #10 clk=0;
    #10 clk=1;
    #10 clk=0;
    #10 clk=1;
    end
    
    CPU cpu_test(clk, pcFill, RegDst, AluSrc, MemToReg , RegWrite , MemRead , MemWrite,  AluOp, opcode);
endmodule
