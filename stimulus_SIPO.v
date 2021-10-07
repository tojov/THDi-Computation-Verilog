module stimulus_SIPO();

reg clk, in_ready;
reg signed [15:0] d_in;
wire signed [15:0] d_out0, d_out1, d_out2, d_out3, d_out4, d_out5, d_out6, d_out7,d_out8, d_out9, d_out10, d_out11, d_out12, d_out13, d_out14, d_out15, d_out16, d_out17,d_out18, d_out19, d_out20, d_out21, d_out22, d_out23, d_out24, d_out25, d_out26, d_out27,d_out28, d_out29, d_out30, d_out31;
wire done;

  SIPO s1(clk, in_ready, d_in, d_out0, d_out1, d_out2, d_out3, d_out4, d_out5, d_out6, d_out7, d_out8, d_out9, d_out10, d_out11, d_out12, d_out13, d_out14, d_out15, d_out16, d_out17, d_out18, d_out19,d_out20, d_out21, d_out22, d_out23, d_out24, d_out25, d_out26, d_out27, d_out28, d_out29, d_out30, d_out31, done);

