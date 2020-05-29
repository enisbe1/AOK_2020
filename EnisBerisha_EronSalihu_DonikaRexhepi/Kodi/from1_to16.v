`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/23/2020 03:23:19 PM
// Design Name: 
// Module Name: from1_to16
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


module from1_to16(
input a,
    input b,
    input cin,
    input bnegate,
    input [2:0] op,
    output result,
    output cout
    );
    wire[15:0] a;
    wire[15:0] b; 
    wire cin;
    wire bnegate;
    wire[2:0] op;
    wire[15:0] result;
    wire[15:0] c;
    assign cout = c[15];
    
    
    alu_1bit bitet_0(a[0], b[0], cin,   bnegate,  op, result[0], c[0]);
    alu_1bit bitet_1(a[1], b[1], c[0],  bnegate,  op, result[1], c[1]);
    alu_1bit bitet_2(a[2], b[2], c[1],  bnegate,  op, result[2], c[2]);
    alu_1bit bitet_3(a[3], b[3], c[2],  bnegate,  op, result[3], c[3]); 
    alu_1bit bitet_4(a[4], b[4], c[3],  bnegate,  op, result[4], c[4]);
    alu_1bit bitet_5(a[5], b[5], c[4],  bnegate,  op, result[5], c[5]);
    alu_1bit bitet_6(a[6], b[6], c[5],  bnegate,  op, result[6], c[6]);
    alu_1bit bitet_7(a[7], b[7], c[6],  bnegate,  op, result[7], c[7]);
    alu_1bit bitet_8(a[8], b[8], c[7],  bnegate,  op, result[8], c[8]);
    alu_1bit bitet_9(a[9], b[9], c[8],  bnegate,  op, result[9], c[9]);
    alu_1bit bitet_10(a[10], b[10], c[9],  bnegate,  op, result[10], c[10]);
    alu_1bit bitet_11(a[11], b[11], c[10],  bnegate,  op, result[11], c[11]);
    alu_1bit bitet_12(a[12], b[12], c[11],  bnegate,  op, result[12], c[12]);
    alu_1bit bitet_13(a[13], b[13], c[12],  bnegate,  op, result[13], c[13]);
    alu_1bit bitet_14(a[14], b[14], c[13],  bnegate,  op, result[14], c[14]);
    alu_1bit bitet_15(a[15], b[15], c[14],  bnegate,  op, result[15], cout);
endmodule
