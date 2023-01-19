`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/18/2023 07:35:03 PM
// Design Name: 
// Module Name: top_module
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


module top_module(
input [15:0] sw,
input btnU, 
input btnR,
input clkin,

output [6:0] seg,
output dp, 
output [3:0] an,
output [15:0] led

    );
    
    wire dig_sel;
    wire [7:0] H1;
    wire [7:0] L1;
    wire [6:0] U1;
    wire [6:0] D1;
    
    lab2_digsel inst1(.clkin(clkin), .greset(btnR), .digsel(dig_sel));
    
    sign_changer change (.sign(btnU), .A(sw[7:0]), .D(H1[7:0]));
    
    hex7seg eq1 (.n(H1[3:0]), .seg(U1));
    hex7seg eq2 (.n(H1[7:4]), .seg(D1));
    
    m2_1 in (.in0(D1), .in1(U1), .sel(dig_sel), .o(seg[6:0]));
     
    assign an[0] = ~dig_sel;
    assign an[1] = dig_sel;
    assign an[2] = 1;
    assign an[3] = 1;
    assign dp = 1;
endmodule
