module ex4
(
input clk ,
input d,
output q,
output q_n
);
wire r = ~d & clk;
wire s = d & clk ;
ex3 ex3 (s, r, q, q_n) ;
endmodule 