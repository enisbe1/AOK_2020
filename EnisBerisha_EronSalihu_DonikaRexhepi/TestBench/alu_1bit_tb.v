`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/23/2020 03:24:28 PM
// Design Name: 
// Module Name: alu_1bit_tb
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


module alu_1bit_tb();

reg a, b, cin,bnegate;
reg[2:0] op;

wire result;
wire cout;
initial 
$monitor ("a = %b, b = %b, cin = %b, cout = %b, op2=%b, op1 = %b, op0 = %b, bnegate = %b",
a, b, cin, cout,op[2], op[1], op[0], bnegate);
initial
begin
//AND
#0 a=0; b=0; cin=0;  bnegate=0;   op[2]=0; op[1]=0; op[0]=0;//r=0 cout=0 // 000 , 010, 100, 011
#10 a=1; b=0; cin=0;  bnegate=0;  op[2]=0; op[1]=0; op[0]=0;//r=0 cout=0
#10 a=1; b=1; cin=0;  bnegate=0;  op[2]=0; op[1]=0; op[0]=0;//r=1 cout=0
//OR
#10 a=0; b=0; cin=0;  bnegate=0;  op[2]=0;op[1]=1; op[0]=0;//r=0 cout=0
#10 a=1; b=0; cin=0;  bnegate=0;  op[2]=0;op[1]=1; op[0]=0;//r=1 cout=0
#10 a=1; b=1; cin=0;  bnegate=0;  op[2]=0; op[1]=1; op[0]=0;//r=1 cout=0
//ADD
#10 a=0; b=0; cin=0;  bnegate=0;  op[2]=1;op[1]=0; op[0]=0;//r=0 cout=0
#10 a=1; b=0; cin=0;  bnegate=0;  op[2]=1;op[1]=0; op[0]=0;//r=1 cout=0
#10 a=1; b=1; cin=0;  bnegate=0;  op[2]=1;op[1]=0; op[0]=0;//r=0 cout=1
#10 a=1; b=1; cin=1;  bnegate=0;  op[2]=1;op[1]=0; op[0]=0;//r=1 cout=1
//SUB
#10 a=0; b=0; cin=1;  bnegate=1;  op[2]=1;op[1]=0; op[0]=0;//r=1 cout=0
#10 a=0; b=1; cin=1;  bnegate=1;  op[2]=1;op[1]=0; op[0]=0;//r=1 cout=0
#10 a=1; b=0; cin=1;  bnegate=1;  op[2]=1;op[1]=0; op[0]=0;//r=1 cout=0
#10 a=1; b=1; cin=1;  bnegate=1;  op[2]=1;op[1]=0; op[0]=0;//r=0 cout=0
//XOR 
#10 a=0; b=0; cin=0;  bnegate=0;  op[2]=0;op[1]=1; op[0]=1;//r=0 cout=0
#10 a=0; b=1; cin=0;  bnegate=0;  op[2]=0;op[1]=1; op[0]=1;//r=1 cout=0
#10 a=1; b=0; cin=0;  bnegate=0;  op[2]=0;op[1]=1; op[0]=1;//r=1 cout=0
#10 a=1; b=1; cin=0;  bnegate=0;  op[2]=0;op[1]=1; op[0]=1;//r=0 cout=0

#10 $stop;
end

alu_1bit bitet(a, b, cin, bnegate,  op, result, cout);
endmodule
