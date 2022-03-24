VERILOG = iverilog
TARGET = decoder_3_8.vcd
TEMP = decoder_3_8.vvp

$(TARGET) : decoder_3_8.vvp
	vvp decoder_3_8.vvp

decoder_3_8.vvp: decoder_3_8_tb.v decoder_3_8.v decoder_2_4.v clkgen.v
	$(VERILOG) -o decoder_3_8.vvp decoder_3_8.v decoder_2_4.v clkgen.v decoder_3_8_tb.v

clean:
	-del $(TARGET)
	-del $(TEMP)