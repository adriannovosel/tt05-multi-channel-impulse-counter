`default_nettype none

// just a stub to keep the Tiny Tapeout tools happy

module tt_um_adriannovosel_top (
    input  wire [7:0] ui_in,
    output wire [7:0] uo_out,
	/* verilator lint_off UNUSEDSIGNAL */
    input  wire [7:0] uio_in,
    output wire [7:0] uio_out,
    output wire [7:0] uio_oe,
	/* verilator lint_off UNUSEDSIGNAL */
    input  wire       ena,
    input  wire       clk,
    input  wire       rst_n
);

    top top1(.reset(ui_in[0]), .clk(ui_in[1]), .ch1(ui_in[2]), .ch2(ui_in[3]), .ch3(ui_in[4]), .ch4(ui_in[5]),
	     .ch5(uio_in[0]), .ch6(uio_in[1]), .ch7(uio_in[2]), .ch8(uio_in[3]), .RTC(ui_in[6]), 
             .serial_out(uo_out[0]), .ovf_global(uo_out[1]), .ovf_RTC_out(uo_out[2]), .a0_out(uo_out[3]), .a1_out(uo_out[4]), 
	     .a2_out(uo_out[5]), .a3_out(uo_out[6]), .SL_out(uo_out[7]));
   assign uio_out = 8'b0;
    assign uio_oe = 8'b0;
endmodule // top
