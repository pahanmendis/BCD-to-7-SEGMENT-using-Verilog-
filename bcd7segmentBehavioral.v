  
// This code is implements a BCD to 7-Segment Decoder using verilog
// We have used Hierarchical Design to implement our circuit
// This code creates a module called bcd7segment using Behavioral modeling which implements the BCD to 7-Segment Decoder
// This module is then initialized on the top level file
// All the deductions for the 7-segment display segments can be read on the link below
// https://www.focuslk.com/design-of-bcd-to-7-segment-display-decoder-using-logic-gates/

//declaring the model
module bcd7segmentBehavioral(
			bcd,
			seg
			);
	input [3:0] bcd; 	//initializing bcd as an 4 bit input signal
	output[7:0] seg; 	//initializing seg as an 8 bit output signal
	reg [7:0] seg; 		//initializing bcd signal as registers
	
	always @ (bcd) 		//using the always statement to indicate any change in the bcd signal results in evaluating the declared cases
	begin
		case(bcd)	//begining the case statement which evaluates the bcd value and assigns the appropriate contol signals to our 8bit output signal).
			0: seg = 8'b11000000;	//when bcd = 0
			1: seg = 8'b11111001;	//when bcd = 1
			2: seg = 8'b10100100;	//when bcd = 2
			3: seg = 8'b10110000;	//when bcd = 3
			4: seg = 8'b10011001;	//when bcd = 4
			5: seg = 8'b10010010;	//when bcd = 5
			6: seg = 8'b10000010;	//when bcd = 6
			7: seg = 8'b11111000;	//when bcd = 7
			8: seg = 8'b10000000;	//when bcd = 8
			9: seg = 8'b10010000;	//when bcd = 9
			default: seg=8'b11111111;	//any other value
		endcase
	end
	endmodule
