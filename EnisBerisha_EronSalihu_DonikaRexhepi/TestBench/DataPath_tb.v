`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/26/2020 11:19:42 PM
// Design Name: 
// Module Name: DataPath_tb
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


module DataPath_tb(
    );
    reg clk;
reg [15:0] pcFill;
reg RegDst;
reg ALUSrc;
reg MemToReg ;
reg RegWrite ;
reg MemRead ;
reg MemWrite; 
reg ALUOp;
wire [1:0] opcode;
wire [2:0] RS;
wire [2:0] RT;
wire [2:0] RD;
wire [2:0] daljaMux;
wire [15:0] immidiate_long;
wire [15:0] WriteData;
wire [15:0] RD1;
wire [15:0] RD2;
wire [15:0] VLERA;
wire [15:0] REZULTATI;
wire [15:0] ReadData;



 initial
     
    $monitor ("clk=%b,pcFill=%b,RegDst = %b, ALUSrc = %b, MemToReg = %b, RegWrite=%b,MemRead=%b,MemWrite=%b,ALUOp=%b,opcode=%b,RS=%b,RT=%b,RD=%b,daljaMux=%b,immidiate_long=%b,WriteData=%b,RD1=%b,RD2=%b,VLERA=%b,REZULTATI=%b,ReadData=%b",
    clk,pcFill,RegDst,ALUSrc,MemToReg,RegWrite,MemRead,MemWrite,ALUOp,opcode,RS,RT,RD,daljaMux,immidiate_long,WriteData,RD1,RD2,VLERA,REZULTATI,ReadData);
     initial
        begin
         #10 clk=1'b0;  
          #10 clk=1'b1;pcFill=16'd11;  RegDst=1'b0;ALUSrc=1'b1;MemToReg=1'b0;RegWrite=1'b1;MemRead=1'b0;MemWrite=1'b0;ALUOp=1'b1; //addi
	      #10 clk=1'b0;
          #10 clk=1'b1;pcFill=16'd12; RegDst=1'b0;ALUSrc=1'b1;MemToReg=1'b1;RegWrite=1'b1;MemRead=1'b1;MemWrite=1'b0;ALUOp=1'b0; //lw
          #10 clk=1'b0;
          #10 clk=1'b1;pcFill=16'd13;  RegDst=1'b1;ALUSrc=1'b0;MemToReg=1'b0;RegWrite=1'b1;MemRead=1'b0;MemWrite=1'b0;ALUOp=1'b1;//sub
          #10 clk=1'b0;
          #10 clk=1'b1;pcFill=16'd14;  RegDst=1'b1;ALUSrc=1'b0;MemToReg=1'b0;RegWrite=1'b1;MemRead=1'b0;MemWrite=1'b0;ALUOp=1'b1;//add
          #10 clk=1'b0;
          #10 clk=1'b1;pcFill=16'd15;  RegDst=1'b1;ALUSrc=1'b0;MemToReg=1'b0;RegWrite=1'b1;MemRead=1'b0;MemWrite=1'b0;ALUOp=1'b1;//sll
          #10 clk=1'b0;
          #10 clk=1'b1;pcFill=16'd16;  RegDst=1'b0;ALUSrc=1'b1;MemToReg=1'b0;RegWrite=1'b0;MemRead=1'b0;MemWrite=1'b1;ALUOp=1'b0;//sw 

 
         end

DataPath dataPathTb( clk,pcFill,RegDst,ALUSrc,MemToReg,RegWrite,MemRead,MemWrite,ALUOp,opcode,RS,RT,RD,daljaMux,immidiate_long,WriteData,RD1,RD2,VLERA,REZULTATI,ReadData);
endmodule
