`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/10/2026 12:00:32 PM
// Design Name: 
// Module Name: tb_updown_counter
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


`timescale 1ns/1ps

module tb_updown_counter;

reg clk;
reg rst;
reg up_down;
wire [7:0] count;

// Instantiate DUT
updown_counter uut (
    .clk(clk),
    .rst(rst),
    .up_down(up_down),
    .count(count)
);

// Clock generation (10ns period)
always #5 clk = ~clk;

initial begin
    // Initialize
    clk = 0;
    rst = 1;
    up_down = 1;

    // Reset
    #10 rst = 0;

    // Count UP
    #100 up_down = 1;

    // Count DOWN
    #100 up_down = 0;

    // Stop simulation
    #100 $finish;
end

endmodule
