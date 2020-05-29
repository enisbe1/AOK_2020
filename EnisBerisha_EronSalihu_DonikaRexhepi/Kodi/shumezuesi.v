`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/23/2020 03:43:33 PM
// Design Name: 
// Module Name: shumezuesi
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


module shumezuesi(
 input [7:0]a, input [7:0] b,output [15:0] prodhimi
    );
reg [15:0] prodhimi;
reg [7:0] b_reg;
reg [7:0] count;
    always @*
        begin
        b_reg = b;
        prodhimi = 0;
        count = 8'b00001000;
        if ((a!=0) && (b!=0))
        while (count)
            begin
            prodhimi = {(({8{b_reg[0]}} & a) + prodhimi[15:8]),prodhimi[7:1]};
            b_reg = b_reg >> 1;
            count = count - 1;
            end
        end
endmodule
