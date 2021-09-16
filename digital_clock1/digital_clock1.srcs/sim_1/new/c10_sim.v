`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/09/11 21:13:49
// Design Name: 
// Module Name: c10_sim
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



module c10_sim;

	// Inputs
	reg clk;
	reg cr;
	reg en;

	// Outputs
	wire rco;
	wire [3:0] bcd10;

	// Instantiate the Unit Under Test (UUT)
	c10 uut (
		.clk(clk), 
		.cr(cr), 
		.rco(rco), 
		.en(en), 
		.bcd10(bcd10)
	);
	parameter PERIOD =10;
	always begin
	clk=1'b0;
	#(PERIOD/2)clk=1'b1;
	#(PERIOD/2);
	end
	initial begin
		// Initialize Inputs
		clk = 0;
		cr = 0;
		en = 0;

		// Wait 100 ns for global reset to finish
		#100;
		cr=0;
		en=1;
		#100;
		cr=1;//��������
      #100000;
		en=0;
        
		// Add stimulus here

	end
      
endmodule

