`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/23/2020 04:04:21 PM
// Design Name: 
// Module Name: ALU_tb
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


module ALU_tb(
 );
    
    reg [2:0]op;
    reg[15:0] a, b;
    reg cin, bnegate;
    wire[15:0] REZULTATI;
    wire cout;
    
    initial
     
    $monitor ("op=%b,a = %b, b = %b, cin = %b,bnegate=%b, cout = %b, REZULTATI=%d",
    op,a, b, cin,bnegate, cout, REZULTATI);
    
    initial
        begin


    //AND

        #0 op=3'b000; a=4'b0000; b=4'b0000; cin=0; bnegate=0; 
        #10 op=3'b000;  a=4'b1101; b=4'b1000; cin=0; bnegate=0;
        #10 op=3'b000;  a=4'b1001; b=4'b0101; cin=0; bnegate=0;
      
    //OR
      
        #10 op=3'b010; a=4'b0000; b=4'b0000; cin=0;  bnegate=0;
        #10 op=3'b010;  a=4'b0001; b=4'b0000; cin=0;  bnegate=0;
        #10 op=3'b010;  a=4'b0001; b=4'b0001; cin=0;  bnegate=0;

    //ADD
        #10 op=3'b100;  a=8'd10; b=8'd6;cin=0; bnegate=0;
        #10 op=3'b100; a=4'b1011; b=4'b1010;cin=0;  bnegate=0;
        #10 op=3'b100; a=4'b0010; b=4'b0100;cin=0;  bnegate=0;
    //SUB
        #10 op=3'b100;  a=8'd1;b=8'd1; cin=1; bnegate=1;
        #10 op=3'b100; a=8'b00010001; b=8'b00000001; cin=1;  bnegate=1;
        #10 op=3'b100; a=8'b01001001; b=8'b01010101; cin=1; bnegate=1;
    //XOR
        #10 op=3'b011; a=8'd18; b=8'd25;cin=1; bnegate=0;
        #10 op=3'b011; a=8'b01010001; b=8'b00011000; cin=1; bnegate=0;   
        #10 op=3'b011; a=8'b01101011; b=8'b01011101; cin=1;  bnegate=0;
    //sll
        #10 op=3'b001; a=8'd1; b=8'b00000000; cin=0;   bnegate=0;
        #10 op=3'b001;  a=8'd29; b=8'b01010101; cin=0;  bnegate=0;
        #10 op=3'b001; a=8'b11111111; b=8'ha;cin=0; bnegate=0;
    //SRL
        #10 op=3'b110; a=8'd10; b=8'd13; cin=0;  bnegate=0;
        #10 op=3'b110; a=8'd30; b=8'd13; cin=0;  bnegate=0;
        #10 op=3'b110; a=8'b11011001; b=8'd9; cin=0; bnegate=0;
    //mult
        #10 op=3'b111; a=8'd1; b=8'd3; cin=0;  bnegate=0;
        #10 op=3'b111; a=8'd5; b=8'd7; cin=0; bnegate=0;
        #10 op=3'b111; a=8'd20; b=8'd10;cin=0; bnegate=0;
        #10 op=3'b111; a=8'd9; b=8'd17; cin=0;   bnegate=0;
        #10 $stop;
    end

ALU thirrja(op,a, b, cin,bnegate,cout,REZULTATI);

endmodule
