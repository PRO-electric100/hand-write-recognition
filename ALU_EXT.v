module extended_ALU(clk, src1, src0, func, dst_EX_DM, ov, zr, neg);
	// Encoding of func[2:0] is as follows: //
	// 000 ==> MUL   Multiplicación de enteros con signo
	// 001 ==> UMUL  Multiplicación de enteros sin signo
	// 010 ==> ADDF  Suma de punto flotante
	// 011 ==> SUBF  Resta de punto flotante
	// 100 ==> MULF  Multiplicación de punto flotante
	// 101 ==> ITF   Conversión de entero a punto flotante
	// 110 ==> FTI   Conversión de punto flotante a entero
	// 111 ==> undefined
	
		`include "common_params.inc"
    
	 
	input clk;
	input [31:0] src1, src0;
	input [2:0] func;				// selects function to perform
	output reg [31:0] dst_EX_DM;
	output ov, zr, neg;

	reg [31:0] ifadd_OUT, ifmul_OUT, iftoi_OUT, iitof_OUT, iimul_OUT;

	reg [31:0] OUT;

		
endmodule
