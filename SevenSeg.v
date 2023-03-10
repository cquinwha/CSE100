`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/17/2023 04:29:01 PM
// Design Name: 
// Module Name: hex7seg
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


module hex7seg(
    input [4:0] n,
    output [7:0] seg
    );
    
    m8_1 Seg0(.in({1'b0,n[0],n[0],1'b0,1'b0,~n[0],1'b0,n[0]}), .sel({n[3],n[2],n[1]}), .o(seg[0]));
    m8_1 Seg1(.in({1'b1,~n[0],n[0],1'b0,~n[0],n[0],1'b0,1'b0}), .sel({n[3],n[2],n[1]}), .o(seg[1]));
    m8_1 Seg2(.in({1'b1,~n[0],1'b0,1'b0,1'b0,1'b0,~n[0],1'b0}), .sel({n[3],n[2],n[1]}), .o(seg[2]));
    m8_1 Seg3(.in({n[0],1'b0,~n[0],n[0],n[0],~n[0],1'b0,n[0]}), .sel({n[3],n[2],n[1]}), .o(seg[3]));
    m8_1 Seg4(.in({1'b0,1'b0,1'b0,n[0],n[0],1'b1,n[0],n[0]}), .sel({n[3],n[2],n[1]}), .o(seg[4]));
    m8_1 Seg5(.in({1'b0,n[0],1'b0,1'b0,n[0],1'b0,1'b1,n[0]}), .sel({n[3],n[2],n[1]}), .o(seg[5]));
    m8_1 Seg6(.in({1'b0,~n[0],1'b0,1'b0,n[0],1'b0,1'b0,1'b1}), .sel({n[3],n[2],n[1]}), .o(seg[6]));
 
endmodule
