`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/23/2020 11:57:51 PM
// Design Name: 
// Module Name: ALUCONTROLLO
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


module ALUCONTROLLO(
    );
   
     reg[1:0] opcode;
    reg [4:0] Funksioni;
    reg[15:0] a, b;
   
    wire[15:0] REZULTATI;
    wire cout;
    
    initial
     
    $monitor ("opcode=%b,Funksioni=%b,a = %b, b = %b, cout = %b, REZULTATI=%d",
    opcode,Funksioni,a, b,cout, REZULTATI);
    
    initial
        begin


    //AND

        #0 opcode=2'b00;Funksioni=5'b00001; a=4'b0000; b=4'b0000; ;  //0000
        #10 opcode=2'b00;Funksioni=5'b00001;  a=4'b1101; b=4'b1000;    //1000
        #10 opcode=2'b00;Funksioni=5'b00001;  a=4'b1001; b=4'b0101;    //0001
      
    //OR
      
        #10 opcode=2'b00;Funksioni=5'b00010; a=4'b0000; b=4'b0000;     //0000
        #10 opcode=2'b00;Funksioni=5'b00010;  a=4'b0001; b=4'b0000;    //0001
        #10 opcode=3'b00;Funksioni=5'b00010;  a=4'b1001; b=4'b0101;    //1101

    //ADD
        #10 opcode=2'b00;Funksioni=5'b00100;  a=8'd10; b=8'd6;     //10-hex
        #10 opcode=2'b00;Funksioni=5'b00100; a=8'b1011; b=8'b1010;   //15
        #10 opcode=2'b00;Funksioni=5'b00100; a=8'b0010; b=8'b0100;    //6
    //SUB
        #10 opcode=2'b00;Funksioni=5'b00111;  a=8'd1;b=8'd1;    
        #10 opcode=3'b00;Funksioni=5'b00111; a=8'b10010001; b=8'b00000001;      
        #10 opcode=3'b00;Funksioni=5'b00111; a=8'b11001001; b=8'b01010101;    
    //XOR
        #10 opcode=2'b00;Funksioni=5'b00011; a=8'd18; b=8'd25;   
        #10 opcode=2'b00;Funksioni=5'b00011; a=3'b001; b=3'b110;      
        #10 opcode=2'b00;Funksioni=5'b00011; a=6'b101011; b=6'b011101;    
    //sll
        #10 opcode=2'b00;Funksioni=5'b01000; a=8'd1; b=8'b00000000;      
        #10 opcode=2'b00;Funksioni=5'b01000;  a=8'd29; b=8'b01010101;    
        #10 opcode=2'b00;Funksioni=5'b01000; a=8'b11111111; b=8'ha; 
    //SRL
        #10 opcode=2'b00;Funksioni=5'b01001; a=8'd10; b=8'd13;    
        #10 opcode=2'b00;Funksioni=5'b01001; a=8'd30; b=8'd13;   
        #10 opcode=2'b00;Funksioni=5'b01001; a=8'd32; b=8'd9;    
    //mult
        #10 opcode=2'b00;Funksioni=5'b10000; a=8'd1; b=8'd3;   
        #10 opcode=2'b00;Funksioni=5'b10000;  a=8'd5; b=8'd7;   
        #10 opcode=2'b00;Funksioni=5'b10000; a=8'd20; b=8'd10;  
        #10 opcode=2'b00;Funksioni=5'b10000; a=8'd9; b=8'd17; 
     //addi
        #10 opcode=2'b01;Funksioni=5'd4;a=8'd10;b=8'd10;
        #10 opcode=2'b01;Funksioni=5'd4;a=8'd32;b=8'd16; 
        #10 opcode=2'b01;Funksioni=5'd4;a=8'd14;b=8'd18;  
    //lw

        #10 opcode=2'b10;Funksioni=5'd5; a=8'd20; b=8'd20; 
        #10 opcode=2'b10;Funksioni=5'd4; a=8'd10; b=8'd8;  
    //sw
        #10 opcode=2'b11;Funksioni=5'd2;a=8'd10; b=8'd10;   
        #10 opcode=2'b11;Funksioni=5'd21;a=8'd32; b=8'd14; 
        #10 opcode=2'b11;Funksioni=5'd30;a=8'd13; b=8'd19;   
        #10 $stop;
    end

ALU thirreeeee(opcode,Funksioni,a, b,cout,REZULTATI);
endmodule
