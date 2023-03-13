`timescale 1ns/1ps

module adder(
  input logic [2:0] a,
  input logic [2:0] b,
  output logic [3:0] sum
);

logic carry;

assign {carry, sum} = a + b;

endmodule
