module andgatetb;
reg a, b; 
wire y; 
andgateg andgate(.a(a), .b(b),.y(y));
initial begin
 a=1'b0;b= 1'b0;
 #10 a =1'b0;b= 1'b1;
 #10 a=1'b1;b= 1'b0;
 #10 a=1'b1;b= 1'b1;
 #10
$finish;
 end 
always @(y)
 $display( "time =%0t \tINPUT VALUES: \t a=%b b =%b \t output value y=%b",$time,a,b,y);
endmodule
