`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/18/2023 07:44:59 PM
// Design Name: 
// Module Name: sign_changer
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


module sign_changer(
input [7:0] A,
input sign,
output[7:0] D,
output ovfl
    );
    
    wire [7:0] L;
    wire [7:0] R;
    assign R = {~A};
    
    wire I1, I2;
        
    add_eight sc (.a(R[7:0]), .b({0'b0, 0'b0, 0'b0, 0'b0, 0'b0, 0'b0, 0'b0, 0'b0}), .cin(1'b1), .cout(I1), .s(L[7:0]));
    m2_1 choice (.in0(A[7:0]), .in1(R[7:0]), .sel(sign), .o(D));
endmodule
