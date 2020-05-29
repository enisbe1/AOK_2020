`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/23/2020 03:19:33 PM
// Design Name: 
// Module Name: alu_1bit
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


module alu_1bit(  input a,
    input b,
    input cin,
    input bnegate,
    input [2:0] op,
    output result,
    output cout
    );
    wire a, b, cin, bnegate;

wire[2:0] op;

wire result;

wire cout;

wire net2, net3, net4, net5, bjo;

not b1 (bjo, b);

mux_2_1 m2_B(bnegate, b, bjo, net2);

and andi (net3, a, net2);

or ori (net4, a, net2);

xor xori(net6, a,net2);

full_adder mbledhesi (a, net2, cin, net5, cout);
mux_8_1 m5 (op,net3,a,net4,net6,net5,net5,a,a,result);
endmodule
