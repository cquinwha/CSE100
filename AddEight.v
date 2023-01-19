`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/18/2023 07:50:47 PM
// Design Name: 
// Module Name: add_eight
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


module add_eight(
input [7:0] a,
input [7:0] b,
input cin,
output[7:0] s,
output cout
    );
    
    wire add[7:0];
    
    FullAdder f1 (.A(a[0]), .B(b[0]), .Cin(cin), .S(s[0]), .Cout(add[0]));
    FullAdder f2 (.A(a[1]), .B(b[1]), .Cin(add[1]), .S(s[1]), .Cout(add[1]));
    FullAdder f3 (.A(a[2]), .B(b[2]), .Cin(add[2]), .S(s[2]), .Cout(add[2]));
    FullAdder f4 (.A(a[3]), .B(b[3]), .Cin(add[3]), .S(s[3]), .Cout(add[3]));
    FullAdder f5 (.A(a[4]), .B(b[4]), .Cin(add[4]), .S(s[4]), .Cout(add[4]));
    FullAdder f6 (.A(a[5]), .B(b[5]), .Cin(add[5]), .S(s[5]), .Cout(add[5]));
    FullAdder f7 (.A(a[6]), .B(b[6]), .Cin(add[6]), .S(s[6]), .Cout(add[6]));
    FullAdder f8 (.A(a[7]), .B(b[7]), .Cin(add[7]), .S(s[7]), .Cout(cout));
    
endmodule
