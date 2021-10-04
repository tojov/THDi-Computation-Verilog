module SIPO(
input clk, in_ready,
input signed [15:0] d_in,
output signed [15:0] d_out0, d_out1, d_out2, d_out3, d_out4, d_out5, d_out6, d_out7,d_out8, d_out9, d_out10, d_out11, d_out12, d_out13, d_out14, d_out15, d_out16, d_out17,d_out18, d_out19, d_out20, d_out21, d_out22, d_out23, d_out24, d_out25, d_out26, d_out27,d_out28, d_out29, d_out30, d_out31,
output reg done
); 

reg [4:0] count;
reg  state; 
reg [15:0] sipo [0:31];
integer i;

always @(posedge clk or negedge in_ready) begin
  if(!in_ready) begin
   state <= 1'b1;
   count <= 1'b0;
  end

  case (state)
  1'd0 : begin 
    done <= 1'b0;
  end
  1'd1 : begin
    sipo[0] <= d_in;
    for (i=1;i<32;i = i + 1) begin
      sipo[i] <= sipo[i-1];
    end
    count <= count + 1;
    if(count == 5'd31) begin
      state <= 1'd0;
      done <= 1'b1;
    end
    else
      state <= 1'd1;
  end
  default : done <= 1'b0;
  endcase
end

  assign d_out0 = sipo[0];
  assign d_out1 = sipo[1];
  assign d_out2 = sipo[2];
  assign d_out3 = sipo[3];
  assign d_out4 = sipo[4];
  assign d_out5 = sipo[5];
  assign d_out6 = sipo[6];
  assign d_out7 = sipo[7];
  assign d_out8 = sipo[8];
  assign d_out9 = sipo[9];
  assign d_out10 = sipo[10];
  assign d_out11 = sipo[11];
  assign d_out12 = sipo[12];
  assign d_out13 = sipo[13];
  assign d_out14 = sipo[14];
  assign d_out15 = sipo[15];
  assign d_out16 = sipo[16];
  assign d_out17 = sipo[17];
  assign d_out18 = sipo[18];
  assign d_out19 = sipo[19];
  assign d_out20 = sipo[20];
  assign d_out21 = sipo[21];
  assign d_out22 = sipo[22];
  assign d_out23 = sipo[23];
  assign d_out24 = sipo[24];
  assign d_out25 = sipo[25];
  assign d_out26 = sipo[26];
  assign d_out27 = sipo[27];
  assign d_out28 = sipo[28];
  assign d_out29 = sipo[29];
  assign d_out30 = sipo[30];
  assign d_out31 = sipo[31];

endmodule  
