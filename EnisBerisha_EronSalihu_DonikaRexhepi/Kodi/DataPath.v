`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/23/2020 04:14:16 PM
// Design Name: 
// Module Name: DataPath
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


module DataPath(
input clk,
input pcFill,
input RegDst,
input ALUSrc,
input MemToReg ,
input RegWrite ,
input MemRead ,
input MemWrite, 
input ALUOp,
//

output opcode
//output RS,
//output RT,
//output RD,
//output daljaMux,
//output immidiate_long,
//output WriteData,
//output RD1,
//output RD2,
//output VLERA,
//output REZULTATI,
//output ReadData
//
    );
    
    wire clk;
    reg [15:0] pc;
    wire [15:0] pcFill;
    wire RegDst;
    wire ALUSrc;
    wire MemToReg;
    wire RegWrite;
    wire MemRead;
    wire MemWrite;
    wire ALUOp;
    wire [1:0] opcode;
    wire [2:0] RS;
    wire [2:0] RT;
    wire [2:0] RD;
    wire [15:0] instruksioni;
    wire [4:0] Funksioni;
    wire [7:0] Immidiate;
    wire [15:0] WriteData;
    wire [15:0] RD1;
    wire [15:0] RD2;
    wire [2:0] daljaMux;
    wire [15:0] VLERA;
    wire [15:0] immidiate_long;
    wire cout;
    wire [15:0] REZULTATI;
    wire [3:0] AluControl;
    wire [15:0] pcOut;
    wire [15:0] ReadData;
    reg [15:0] Registers[7:0];


    always @(posedge clk)
    begin
    pc<=pcFill;
    end
   // assign pcOut=pcFill+16'd1;
   
    
    
// 16 her full_adder pcShto (pcFill,16'd1,1'b0,pcOut,jasht);

    memory DPIMemory(clk,pc,instruksioni);

     assign opcode=instruksioni[15:14];
     assign RS=instruksioni[13:11];
     assign RT=instruksioni[10:8];
     assign RD=instruksioni[7:5];
     assign Funksioni=instruksioni[4:0];
     assign Immidiate=instruksioni[7:0];
    
   

    // mux_2_1 zgjedhjaRF(RegDst,RT,RD,daljaMux);
     assign daljaMux=RegDst?RD:RT;
     RegistreFile RFDP(RS,RT,daljaMux,WriteData,RegWrite,clk,RD1,RD2);
     assign immidiate_long= {{8{Immidiate[7]}}, Immidiate[7:0]};
     
    // mux_2_1 zgjedhIM_RD(ALUSrc,RD2,Immidiate,VLERA);
     
     assign VLERA=ALUSrc?immidiate_long:RD2;
     
     aluControl opii(ALUOp,Funksioni,AluControl);
     ALU aluDP(AluControl,RD1,VLERA, cout,REZULTATI);
     

     dataMemory DPdataM(REZULTATI, RD2,MemWrite,MemRead,clk,ReadData);
    
   //  mux_2_1 shkruarja(MemToReg,REZULTATI,ReadData,WriteData);
     assign WriteData=MemToReg?ReadData:REZULTATI;

    
endmodule
