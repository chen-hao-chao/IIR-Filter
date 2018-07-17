`define IDEL 2'b00
`define COUNT 2'b01
`define WRITE 2'b10
//define: { WEN load }
//Note: a0~a5, b0~b4 -> 9 of the parameter(weight).

module IIR(clk,rst, load,DIn,RAddr,data_done,WEN,Yn,WAddr,Finish);
	parameter n=16;
	parameter m=20;
	
	input clk,rst;
	input data_done;
	input signed[n-1:0]DIn;
	
	output WEN,load;
	output Finish;
	output signed[n-1:0]Yn;
	output [m-1:0]RAddr;
	output [m-1:0]WAddr;

	reg [1:0]state, next_state;
	//control WEN, load
	reg signed[n-1:0]m1, next_m1, m2, next_m2, m3, next_m3, m4, next_m4, m5, next_m5;
	 //Implement five of previous ans registors.
	reg signed[24:0]ans, next_ans;
	//control Yn
	reg [m-1:0]read_addr, next_read_addr;
	//control RAddr
	reg [m-1:0]write_addr, next_write_addr;
	//control WAddr
	reg [5:0]counter, next_counter;//one-hot coding
	//count for index of the weight.
	reg [2:0]over, next_over;
	//determine wether to stop.
	reg [1:0]last, next_last;
	//determine wether to finish.
	
	wire signed[24:0]extended_din, extended_m1, extended_m2, extended_m3, extended_m4, extended_m5;//25 bits.
	wire signed[24:0]Wa5, Wa4, Wa3, Wb4, Wb3, Wb2, Wb1, Wb0;//25 bits.
	wire signed[24:0]pa_weight;//25 bits.
	wire signed[24:0]pb_weight;//25 bits.
	wire signed[n-1:0]Wans;//16 bits.
	//wire [2:0]ov;
	//choose the weight and product with DIn.
	//Wa2 = Wa3
	//Wa1 = Wa4
	//Wa0 = Wa5
	
	//assign ov = write_addr[2:0];
	assign extended_din = {{2{DIn[15]}}, DIn, {7{1'b0}}};
	assign extended_m1 = {{2{m1[15]}}, m1, {7{1'b0}}};
	assign extended_m2 = {{2{m2[15]}}, m2, {7{1'b0}}};
	assign extended_m3 = {{2{m3[15]}}, m3, {7{1'b0}}};
	assign extended_m4 = {{2{m4[15]}}, m4, {7{1'b0}}};
	assign extended_m5 = {{2{m5[15]}}, m5, {7{1'b0}}};
	
	assign Wa5 = (extended_din >>> 6) + (extended_din >>> 9) + (extended_din >>> 10) + (extended_din >>> 11) + (extended_din >>> 12) +  (extended_din >>> 13) + (extended_din >>> 16);
	assign Wa4 = (extended_din >>> 6) + (extended_din >>> 8) + (extended_din >>> 10) + (extended_din >>> 11) + (extended_din >>> 14) +  (extended_din >>> 15) + (extended_din >>> 16);
	assign Wa3 = (extended_din >>> 5) + (extended_din >>> 8) + (extended_din >>> 9) + (extended_din >>> 11) + (extended_din >>> 14) +  (extended_din >>> 15) + (extended_din >>> 16);
	assign pa_weight = (counter[5]||counter[0])? Wa5 : (counter[4]||counter[1])? Wa4 : Wa3;
	assign Wb4 = (extended_m1 <<< 1) + (extended_m1 >>> 1) + (extended_m1 >>> 2) + (extended_m1 >>> 7) + (extended_m1 >>> 13) + (extended_m1 >>> 14);
	assign Wb3 = (extended_m2 <<< 2) + (extended_m2 >>> 7) + (extended_m2 >>> 9) + (extended_m2 >>> 10) + (extended_m2 >>> 12);
	assign Wb2 = (extended_m3 <<< 1) + (extended_m3) + (extended_m3 >>> 2) + (extended_m3 >>> 4) + (extended_m3 >>> 5) + (extended_m3 >>> 6) + (extended_m3 >>> 7) + (extended_m3 >>> 8);
	assign Wb1 = (extended_m4) + (extended_m4 >>> 1) + (extended_m4 >>> 3) + (extended_m4 >>> 6) + (extended_m4 >>> 7) + (extended_m4 >>> 8) + (extended_m4 >>> 10) + (extended_m4 >>> 11) + (extended_m4 >>> 12) + (extended_m4 >>> 13) + (extended_m4 >>> 16);
	assign Wb0 = (extended_m5 >>> 2) + (extended_m5 >>> 3) + (extended_m5 >>> 8) + (extended_m5 >>> 11) + (extended_m5 >>> 13) + (extended_m5 >>> 14);
	assign pb_weight = Wb4  + Wb2 + Wb0 - Wb3 - Wb1;
	//shift to count the result. so terrible.
	assign Wans = {ans[24], ans[21:7]};
	
	always@(posedge clk)begin//DFF
		if(rst == 1'd1)begin
			state <= `IDEL;
			m1 <= 16'd0;
			m2 <= 16'd0;
			m3 <= 16'd0;
			m4 <= 16'd0;
			m5 <= 16'd0;
			read_addr <= 20'd0;
			write_addr <= 20'd0;
			counter <= 6'b00_0001;
			ans <= 25'd0;
			over <= 3'd0;
			last <= 2'd0;
		end
		else begin
			state <= next_state;
			m1 <= next_m1;
			m2 <= next_m2;
			m3 <= next_m3;
			m4 <= next_m4;
			m5 <= next_m5;
			read_addr <= next_read_addr;
			write_addr <= next_write_addr;
			counter <= next_counter;
			ans <= next_ans;
			over <= next_over;
			last <= next_last;
		end
	end

	always@(*)begin
		case(state)
			`IDEL:begin//initialize
				next_state = `COUNT;
			end
			`COUNT:begin//counter for the part of sum
				next_state = (over == 3'd0)? `WRITE : `COUNT;
			end
			`WRITE:begin//write data and partial initialize
				next_state = `COUNT;
			end
		endcase	
	end
	always@(*)begin
		case(state)
			`IDEL:begin//initialize
				next_m1 = 16'd0;
				next_m2 = 16'd0;
				next_m3 = 16'd0;
				next_m4 = 16'd0;
				next_m5 = 16'd0;
			end
			`COUNT:begin//counter for the part of sum
				next_m1 = m1;
				next_m2 = m2;
				next_m3 = m3;
				next_m4 = m4;
				next_m5 = m5;
			end
			`WRITE:begin//write data and partial initialize
				next_m1 = Wans;
				next_m2 = m1;
				next_m3 = m2;
				next_m4 = m3;
				next_m5 = m4;
			end
		endcase
	end
	
	always@(*)begin
		case(state)
			`IDEL:begin//initialize
				next_read_addr = 20'd0;
				next_write_addr = 20'd0;
			end
			`COUNT:begin//counter for the part of sum
				next_read_addr = (read_addr == 20'd0)? read_addr : read_addr - 20'd1;
				next_write_addr = write_addr;
			end
			`WRITE:begin//write data and partial initialize
				next_read_addr = write_addr + 20'd1;
				next_write_addr = write_addr + 20'd1;
			end
		endcase
	end
	
	always@(*)begin
		case(state)
			`IDEL:begin
				next_counter = 6'b10_0000;
				next_ans = 25'd0;
				next_over = 3'd0;
				next_last = 2'd0;
			end
			`COUNT:begin
				next_counter = counter >> 1;//counter[5], [4], [3], .....
				next_ans = (over == 3'd0)? ans + pa_weight + pb_weight : ans + pa_weight;//add b or not.
				next_over = (over == 3'd0)? over : over - 3'd1;
				next_last = (data_done == 1'd1)? 2'd1 : last;
			end
			`WRITE:begin
				next_counter = 6'b10_0000;
				next_ans = 25'd0;
				next_over = (write_addr > 4)? 3'd5 : write_addr[2:0] + 3'd1;
				next_last = (last == 2'd1)? last + 2'd1 : last;
			end
		endcase	
	end

	assign WEN = state[1];
	assign load = state[0];
	assign RAddr = read_addr;
	assign WAddr = write_addr;
	assign Yn = Wans;
	assign Finish = (last == 2'd2 && state == `COUNT)? 1'd1 : 1'd0;
	
endmodule
