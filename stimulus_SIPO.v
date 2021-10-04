module stimulus_SIPO();

reg clk, in_ready;
reg signed [15:0] d_in;
wire signed [15:0] d_out0, d_out1, d_out2, d_out3, d_out4, d_out5, d_out6, d_out7,d_out8, d_out9, d_out10, d_out11, d_out12, d_out13, d_out14, d_out15, d_out16, d_out17,d_out18, d_out19, d_out20, d_out21, d_out22, d_out23, d_out24, d_out25, d_out26, d_out27,d_out28, d_out29, d_out30, d_out31;
wire done;

  SIPO s1(clk, in_ready, d_in, d_out0, d_out1, d_out2, d_out3, d_out4, d_out5, d_out6, d_out7, d_out8, d_out9, d_out10, d_out11, d_out12, d_out13, d_out14, d_out15, d_out16, d_out17, d_out18, d_out19,d_out20, d_out21, d_out22, d_out23, d_out24, d_out25, d_out26, d_out27, d_out28, d_out29, d_out30, d_out31, done);

initial begin
  clk = 0;
  forever
    #5 clk = ~clk;
end

initial begin
  $dumpfile("SIPO.vcd");
  $dumpvars(0, stimulus_SIPO);
end

initial begin
  $monitor($time, "in_ready = %b, d_in = %d, d_out0 = %d, d_out1 = %d, d_out2 = %d, d_out3 = %d, d_out4 = %d, d_out5 = %d, d_out6 = %d, d_out7 = %d, d_out8 = %d, d_out9 = %d, d_out10 = %d, d_out11 = %d, d_out12 = %d, d_out13 = %d, d_out14 = %d, d_out15 = %d, d_out16 = %d, d_out17 = %d, d_out18 = %d, d_out19 = %d, d_out20 = %d, d_out21 = %d, d_out22 = %d, d_out23 = %d, d_out24 = %d, d_out25 = %d, d_out26 = %d, d_out27 = %d, d_out28 = %d, d_out29 = %d, d_out30 = %d, d_out31 = %d, s1.count = %d, done = %b", in_ready,d_in, d_out0, d_out1, d_out2, d_out3, d_out4, d_out5, d_out6, d_out7,d_out8, d_out9, d_out10, d_out11, d_out12, d_out13, d_out14, d_out15, d_out16, d_out17,d_out18, d_out19, d_out20, d_out21, d_out22, d_out23, d_out24, d_out25, d_out26, d_out27,d_out28, d_out29, d_out30, d_out31, s1.count, done);

  #5 begin
    in_ready <= 1'b0;
    d_in <= 16'd1;
  end
  #10 begin
    in_ready <= 1'b1;
    d_in <= 16'd2;
  end
end
