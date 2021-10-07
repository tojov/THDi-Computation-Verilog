module stimulus_SIPO();

reg clk, in_ready;
reg signed [15:0] d_in;
wire signed [15:0] d_out0, d_out1, d_out2, d_out3, d_out4, d_out5, d_out6, d_out7,d_out8, d_out9, d_out10, d_out11, d_out12, d_out13, d_out14, d_out15, d_out16, d_out17,d_out18, d_out19, d_out20, d_out21, d_out22, d_out23, d_out24, d_out25, d_out26, d_out27,d_out28, d_out29, d_out30, d_out31;
wire done;

  SIPO s1(clk, in_ready, d_in, d_out0, d_out1, d_out2, d_out3, d_out4, d_out5, d_out6, d_out7, d_out8, d_out9, d_out10, d_out11, d_out12, d_out13, d_out14, d_out15, d_out16, d_out17, d_out18, d_out19,d_out20, d_out21, d_out22, d_out23, d_out24, d_out25, d_out26, d_out27, d_out28, d_out29, d_out30, d_out31, done);
initial begin //clock
  clk = 0;
  forever
    #5 clk = ~clk;
end

initial begin //for .vcd waveform
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
  end // serial data input to get sampled to SIPO
  #10 d_in <= 16'd3;
  #10 d_in <= 16'd4;
  #10 d_in <= 16'd5;
  #10 d_in <= 16'd6;
  #10 d_in <= 16'd7;
  #10 d_in <= 16'd8;
  #10 d_in <= 16'd9;
  #10 d_in <= 16'd10;
  #10 d_in <= 16'd11;
  #10 d_in <= 16'd12;
  #10 d_in <= 16'd13;
  #10 d_in <= 16'd14;
  #10 d_in <= 16'd15;
  #10 d_in <= 16'd16;
  #10 d_in <= 16'd17;
  #10 d_in <= 16'd18;
  #10 d_in <= 16'd19;
  #10 d_in <= 16'd20;
  #10 d_in <= 16'd21;
  #10 d_in <= 16'd22;
  #10 d_in <= 16'd23;
  #10 d_in <= 16'd24;
  #10 d_in <= 16'd25;
  #10 d_in <= 16'd26;
  #10 d_in <= 16'd27;
  #10 d_in <= 16'd28;
  #10 d_in <= 16'd29;
  #10 d_in <= 16'd30;
  #10 d_in <= 16'd31;
  #10 d_in <= 16'd32;
  #30$finish;
  end
  endmodule
