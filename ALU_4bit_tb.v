module alu_4bit_tb;
reg [3:0] a,b;
reg [2:0] sel;
wire [7:0] alu_out;
alu_4bit uut(a,b,sel,alu_out);
initial begin
a=4'b0101;
b=4'b1100;
sel=3'b000;
$monitor("a=%b",a,"b=%b",b,"sel=%b",sel,"alu_out=%b",alu_out);
#90; $finish;
end

always #10 sel=sel+3'b001;

endmodule
