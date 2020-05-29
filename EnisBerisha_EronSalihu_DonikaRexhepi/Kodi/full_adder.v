`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/23/2020 03:18:22 PM
// Design Name: 
// Module Name: full_adder
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


module full_adder(a, b, cin, sum, cout
    );
    input a, b, cin;
    output sum, cout;

    xor inst1 (net1, a, b);
    and inst2 (net2, a, b);
    xor inst3 (sum, net1, cin);
    
    and inst4 (net3, net1, cin);
    or inst5 (cout, net3, net2);
endmodule
