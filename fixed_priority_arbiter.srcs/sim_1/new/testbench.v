module testbench;
reg [3:0] req;
wire [3:0] grant;
fixed_priority_arbiter dut(.req(req),.grant(grant));
initial begin
$monitor("%0t,%b,%b",$time,req,grant);
req=4'b0000;#10;
req=4'b0001;#10;
req=4'b0010;#10;
req=4'b0100;#10;
req=4'b1000;#10;
req=4'b0011;#10;
req=4'b0111;#10;
req=4'b1111;#10;
req=4'b1001;#10;
req=4'b0101;#10;
req=4'b0000;#10;
$finish;
end
endmodule

