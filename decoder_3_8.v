module decoder_3_8(E , In , Out);//3對8解碼器
input E;                         //致能腳
input [2:0] In;                  //輸入
output [7:0] Out;                //輸出
wire E1 , G1 , G2;               //wire宣告三條接線
not u1(E1 , In[2]);              //把In[2]的訊號做反向傳給E1
and a1(G1 , E , In[2]);          //把In[2]和E做AND再傳給G1
and a2(G2 , E , E1);             //把E1和E做AND再傳給G2
decoder_2_4 block1(G1 , In[1 : 0] , Out[7 : 4]);    //使用decoder_2_4 控制線為G1 輸入為In[1:0] 輸出為Out[7:4]
decoder_2_4 block2(G2 , In[1 : 0] , Out[3 : 0]);    //使用decoder_2_4 控制線為G2 輸入為In[1:0] 輸出為Out[3:0]
endmodule
