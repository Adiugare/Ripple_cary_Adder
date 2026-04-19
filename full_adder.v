`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.04.2026 13:16:08
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


module full_adder(input a,b,cin,output sum,carry);
wire w1,w2,w3;
half_adder H1(.a(a),.b(b),.sum(w1),.carry(w2));
half_adder H2(.a(w1),.b(cin),.sum(sum),.carry(w3));
or OR1(carry,w2,w3);
endmodule
