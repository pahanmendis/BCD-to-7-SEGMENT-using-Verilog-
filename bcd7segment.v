
module bcd7segment(
	bcd,
	seg
	);
	
	input [3:0] bcd;
	output[7:0] seg;
	
	wire [7:0] seg;
	
	assign seg[0]= ((~bcd[3])&(~bcd[2])&(~bcd[1])&bcd[0]) | ((~bcd[3])&bcd[2]&(~bcd[1])&(~bcd[0]));
	
	assign seg[1]= ((~bcd[3])&bcd[2]&(~bcd[1])&bcd[0]) | ((~bcd[3])&bcd[2]&bcd[1]&(~bcd[0]));
	
	assign seg[2]= ((~bcd[3])&(~bcd[2])&bcd[1]&(~bcd[0]));

	assign seg[3] = ((~bcd[3])&(~bcd[2])&(~bcd[1])&bcd[0]) | ((~bcd[3])&bcd[2]&(~bcd[1])&(~bcd[0])) | ((~bcd[3])&bcd[2]&bcd[1]&bcd[0]);
	
	assign seg[4] = ((~bcd[3])&bcd[0]) | ((~bcd[3])&bcd[2]&(~bcd[1])) | (~(bcd[2])&(~bcd[1])&bcd[0]);
	
	assign seg[5] = ((~bcd[3])&(~bcd[2])&bcd[0]) | ((~bcd[3])&(~bcd[2])&bcd[1]) | ((~bcd[3])&bcd[1]&bcd[0]);
	
	assign seg[6] = ((~bcd[3])&(~bcd[2])&(~bcd[1]))|((~bcd[3])&bcd[2]&bcd[1]&bcd[0]);
	
	assign seg[7] = 1;
	endmodule
	