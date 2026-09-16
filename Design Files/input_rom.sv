`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/16/2026 01:40:47 PM
// Design Name: 
// Module Name: input_rom
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


module input_rom #(parameter width = 16, parameter depth = 100)(
input logic [$clog2(depth)-1:0]addr,
output logic signed [width-1:0]sample
);

logic signed [width-1:0] input_rom [0:depth-1];

initial begin
    $readmemh("input_samples.txt", input_rom);
end
assign sample = input_rom[addr];

endmodule
