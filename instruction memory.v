module instruction_memory(read_address,out);
input [31:0] read_address;
output wire [31:0] out;
reg [31:0] IM [0:1023];//instruction memory is 4KB,address is 32 bit
initial
begin
IM[0]=32'h 8e120000;
IM[1]=32'h 02529820;
//IM[2]=32'h 02119820;
//IM[3]=32'h 
/*
beq $s1,$s2,label
add $s0,$s0,$s0
add $s1,%s1,$s1
label:sub $s1,$s1,$s1
*/






//IM[2]=32'h 0000B820;
//IM[3]=32'h AC160000;
//IM[4]=32'h 01404820;

//IM[0]=32'h0x00008020; // add $s0,$zero,$zero
//IM[0]=32'h0x8C110000; // lw $s1,0($zero)
//IM[0]=32'h0x0000B820; // add $s7,$zero,$zero
//IM[0]=32'h0x8C160000; // lw $s6,0($zero)
//IM[0]=32'h0xAC160000; // sw $s6,0($zero)

//lw $t3, 0($t0) //0x8D0B 0000 
//sw $t2, 8($t0) //0xAD0A 0008 

//01404820//add $t1, $t2, $zero
//00009020//add $s2,$zero,$zero



//IM[0]=32'h0x12110003; // beq $s0,$s1,label
//IM[0]=32'h0x02328020; // add $s0,$s1,$s2
//IM[0]=32'h0x8e550000; // lw $s5,0($s2)
//IM[0]=32'h0xac0d0000; // sw $t5,0($zero)
//IM[1]=32'h0x0232b020; // label: sub $s6,$s1,$s2

//IM[0]=32'h0x8C100004; // lw $s0,0($zero)
//IM[1]=32'h0xAC110000; // sw $s1,0($zero)
//IM[0]=32'h0x02328020; // add $s0,$s1,$s2


/*
add $s0,$s0,$s0
add $s1,$s1,$s1
add $s2,$s2,$s2
add $s3,$s3,$s3
add $s4,$s4,$s4
add $s5,$s5,$s5
add $s6,$s6,$s6
add $s7,$s7,$s7
*/

end
assign out=IM[read_address>>2];

endmodule
