`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/10/2026 11:59:34 AM
// Design Name: 
// Module Name: updown_counter
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


module updown_counter (
    input clk,
    input rst,        // active LOW
    input up_down,
    output reg [7:0] count
);

// Clock Divider
reg [26:0] div;
wire slow_clk;

always @(posedge clk or negedge rst) begin
    if (!rst)
        div <= 0;
    else
        div <= div + 1;
end

assign slow_clk = div[26];

// Counter
always @(posedge slow_clk or negedge rst) begin
    if (!rst)
        count <= 8'b00000000;
    else begin
        if (up_down)
            count <= count + 1;
        else
            count <= count - 1;
    end
end

endmodule