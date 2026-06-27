module alu_4bit(a,b,sel,alu_out);
input [3:0]a,b;
input [2:0] sel;
output reg [7:0] alu_out;
always @(*)
begin
case(sel)
//Addition
3'b000:alu_out = a+b;
//Substraction  
3'b001:alu_out = a-b;
//AND
3'b010:alu_out = a&b;;
//OR
3'b011:alu_out = a|b;
//XOR
3'b100:alu_out = a^b;
//XNOR
3'b101:alu_out = ~(a^b);
//Left Shift
3'b110:alu_out = a<<1;
//Right Shift
3'b111:alu_out = a>>1;
default:alu_out= 8'b00000000;
endcase
end
endmodule