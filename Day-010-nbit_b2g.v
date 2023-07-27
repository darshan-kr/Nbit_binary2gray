module nbitb2gray#(parameter n = 32)
  (
    input [n:0]b,
    output [n:0]g);
assign g = {b[n], b[n:1]^b[n-1:0]};

endmodule
