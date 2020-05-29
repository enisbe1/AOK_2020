`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/28/2020 04:28:15 PM
// Design Name: 
// Module Name: add16_bit_tb
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


module add16_bit_tb(
    );
    reg [15:0] a;
    wire [15:0] b;
    initial
    $monitor("a=%b,b=%b",a,b);
    initial
    begin
    #10 a=16'd10;
    #10 a=16'd20;
    #10 a=16'd28;
    end
    add16_bit shto1(a,b);
    
endmodule
