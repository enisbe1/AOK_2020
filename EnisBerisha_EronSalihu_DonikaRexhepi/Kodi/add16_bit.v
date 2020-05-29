`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/28/2020 04:16:32 PM
// Design Name: 
// Module Name: add16_bit
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


module add16_bit(
input a,
output b
    );
 wire [15:0] a;
 wire [15:0] b;
 wire [15:0] nishi;
 assign nishi=16'd1;
 wire cin;
 assign cin=1'b0;
 wire [15:0] cout;
  full_adder bit1(a[0],nishi[0],cin,b[0],cout[0]);
  full_adder bit2(a[1],nishi[1],cout[0],b[1],cout[1]);
  full_adder bit3(a[2],nishi[2],cout[1],b[2],cout[2]);
  full_adder bit4(a[3],nishi[3],cout[2],b[3],cout[3]);
  full_adder bit5(a[4],nishi[4],cout[3],b[4],cout[4]);
  full_adder bit6(a[5],nishi[5],cout[4],b[5],cout[5]);
  full_adder bit7(a[6],nishi[6],cout[5],b[6],cout[6]);
  full_adder bit8(a[7],nishi[7],cout[6],b[7],cout[7]);
  full_adder bit9(a[8],nishi[8],cout[7],b[8],cout[8]);
  full_adder bit10(a[9],nishi[9],cout[8],b[9],cout[9]);
  full_adder bit11(a[10],nishi[10],cout[9],b[10],cout[10]);
  full_adder bit12(a[11],nishi[11],cout[10],b[11],cout[11]);
  full_adder bit13(a[12],nishi[12],cout[11],b[12],cout[12]);
  full_adder bit14(a[13],nishi[13],cout[12],b[13],cout[13]);
  full_adder bit15(a[14],nishi[14],cout[13],b[14],cout[14]);
  full_adder bit16(a[15],nishi[15],cout[14],b[15],cout[15]);
endmodule
