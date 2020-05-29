`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/23/2020 03:28:08 PM
// Design Name: 
// Module Name: controlli
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


module controlli(
input  [1:0] opcode,
output reg RegDst,
output reg AluSrc,
output reg MemToReg ,
output reg RegWrite ,
output reg MemRead ,
output reg MemWrite, 
output reg AluOp
    );
    
    always @(opcode)
begin
case(opcode)
//Daljet per secilen forme te R format-it
2'b00: 
begin //blloku begin end per nje seri komandash
    assign RegDst = 1; 
    assign AluSrc = 0; 
    assign MemToReg = 0; 
    assign RegWrite = 1; 
    assign MemRead = 0; 
    assign MemWrite = 0; 
    assign AluOp = 1;  
end

//Daljet per  ADDI
2'b01: 
begin 
    assign RegDst = 0; 
    assign AluSrc = 1; 
    assign MemToReg = 0; 
    assign RegWrite = 1; 
    assign MemRead = 0; 
    assign MemWrite = 0; 
    assign AluOp = 1; 
end

// daljet per  LoadWORD
2'b10: 
begin 
    assign RegDst = 0; 
    assign AluSrc = 1; 
    assign MemToReg = 1; 
    assign RegWrite = 1; 
    assign MemRead = 1; 
    assign MemWrite = 0; 
    assign AluOp = 0; 
end

 //Daljet per  StoreWord
2'b11:
begin 
    assign RegDst = 0; 
    assign AluSrc = 1; 
    assign MemToReg = 0; 
    assign RegWrite = 0; 
    assign MemRead = 0; 
    assign MemWrite = 1; 
    assign AluOp = 0; 
end



endcase //perfundojm case
end//perfundojm always
endmodule
