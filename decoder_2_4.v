module decoder_2_4(E , In , Out); //二對四解碼器
input E;                          //致能腳
input [1:0] In;                   //輸入
output [3:0]Out;                  //輸出
wire [3:0] Out;                   //在輸出處拉線
assign Out = E ? 1'b1 << In : 4'h0;//如果致能腳是0的話輸出是0000 如果致能是1的話 輸出是 1*輸入 轉二進制
endmodule
