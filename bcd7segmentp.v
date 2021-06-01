
module bcd7segmentp(
			bcd,
			seg
			);
	input [3:0] bcd;
	output[7:0] seg;
	reg [7:0] seg;
	always @ (bcd)
	begin
		case(bcd)
			0: seg = 8'b11000000;
			1: seg = 8'b11111001;
			2: seg = 8'b10100100;
			3: seg = 8'b10110000;
			4: seg = 8'b10011001;
			5: seg = 8'b10010010;
			6: seg = 8'b10000010;
			7: seg = 8'b11111000;
			8: seg = 8'b10000000;
			9: seg = 8'b10010000;
			default: seg=8'b11111111;
		endcase
	end
	endmodule