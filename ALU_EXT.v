module ALU_EXT(clk, src1, src0, func, dst_EX_DM, ov, zr, neg);
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
	
	//modulo de suma
	
	FP_adder ifadd(
		.A(src1),
		.B(func==SUBF ? {~src0[31], src0[30:0]} : src0),	// flip second operand if doing A - B = A + (-B)
		.out(ifadd_OUT)
	);
   
	//modulo multiplicacion
   FP_mul ifmul(
		.A(src1),
		.B(src0),
		.OUT(ifmul_OUT)
	);
	
	//modulo conversor de flotante a entero con signo  con 32 bits
		float_to_signed_int iftoi(
		.FP_val(src1),
		.signed_int_val(iftoi_OUT)
	);
   //modulo conversion de entero a punto flotante con 32 bits
   	signed_int_to_float iitof(
		.signed_int_val(src1),
		.FP_val(iitof_OUT)
	);

		
endmodule
