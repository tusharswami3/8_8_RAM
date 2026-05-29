`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.05.2026 19:36:17
// Design Name: 
// Module Name: RAM_8_8_tb
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


module RAM_8_8_tb(

    );
    reg clk,rst,wr_enb;
    reg[3:0]wr_adder;
    reg[7:0]data_in;
    reg[3:0]rd_adder;
    wire[7:0]data_out;
    
    RAM_8_8 dut(clk,rst,wr_enb,wr_adder,data_in,rd_adder,data_out);
    initial
    begin
    {clk,rst,wr_enb,wr_adder,data_in,rd_adder} = 0;
    end
    always #5 clk = ~clk;
    
    initial
    begin
    rst = 1;
    #10;
    rst = 0;
    wr_enb = 1;
    wr_adder = 3'b100;
    data_in = 5;
    #10;
    wr_enb = 1;
    rd_adder = 3'b101;
    data_in = 10;
    #10;
    wr_enb = 0;
    rd_adder = 3'b100;
    #10;
    wr_adder = 3'b101;
    #10;
    $finish;
    end
    
    
endmodule
