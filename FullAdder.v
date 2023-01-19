`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/17/2023 05:02:42 PM
// Design Name: 
// Module Name: FA
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


module FA(
    input A,
    input B,
    input Cin,
    output S,
    output Cout
    );
    
    m4_1 mux0(.o(S), .sel({B,Cin}), .in({A, ~A, A}));
    m4_1 mux1(.o(Cout), .sel({B,Cin}), .in({1'b1,A,A,1'b0}));
endmodule
