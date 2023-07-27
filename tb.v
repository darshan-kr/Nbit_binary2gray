module nbitb2graytstbnch;
parameter n = 32;
reg [n:0]bin;
wire [n:0]g;

nbitb2gray nb2g (bin,g);

initial
begin
  $dumpfile("dump.vcd"); $dumpvars;
  $monitor($time,"B=%b,G=%b",bin,g);
  repeat(20) begin
    bin = $random;
    #3;
  end
end
endmodule
