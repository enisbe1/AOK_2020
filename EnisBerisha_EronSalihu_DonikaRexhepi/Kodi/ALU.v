`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/23/2020 03:47:37 PM
// Design Name: 
// Module Name: ALU
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


module ALU(
    input [3:0] vlera,
    input[15:0] a,
    input [15:0] b,
    output cout,
    output REZULTATI
    );

     
    wire[15:0] a;
    wire [15:0] b; 
    reg cin;
    wire bnegate;
    wire [3:0] vlera;
    wire [2:0] op;
    wire [15:0] result;
    reg [15:0]REZULTATI;
    wire[15:0] result;
    wire[15:0] c;
    assign cout = c[15];
    wire[15:0]shuma;
    
     assign op=vlera[2:0];
     assign bnegate=vlera[3];
     always @(bnegate)
     begin
        if(bnegate==1)
            cin=1'b1;
         else
            cin=1'b0;
    end
    from1_to16 bashko(a,b,cin,bnegate,op,result,cout); //nga alu 1 bit thirret 16 her
    shumezuesi shumezo(a[7:0],b[7:0],shuma[15:0]);//merri bitat e poshtem te a dhe b
    always @*
    begin
    case (op)
    //shift left
    3'b001 : 
        REZULTATI={a[14:0],{1{1'b0}}};
    
    //shift right
    3'b110: 
        REZULTATI={{1{1'b0}},a[15:1]};
    
    //and
    3'b000   :
    REZULTATI=result;

    //or
    3'b010 :
    REZULTATI=result;

    //ADD ose Sub
    3'b100:
    REZULTATI=result;

    //XOR
    3'b011:
    REZULTATI=result;

    //Shumezim
    3'b111:
    REZULTATI=shuma;
    
    //addi
    3'b101:
    REZULTATI=result;

    endcase
    end
endmodule
