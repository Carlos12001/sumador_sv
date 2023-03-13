`timescale 1ns/1ps

module testbench;

  // Definición de señales
  logic [2:0] a, b;
  logic [3:0] sum;
  
  // Instanciación del sumador
  adder dot(
    .a(a),
    .b(b),
    .sum(sum)
  );
  
  // Estímulo
  initial begin
    a = 3'b000;
    b = 3'b000;
    #10;
    
    a = 3'b001;
    b = 3'b010;
    #10;
    
    a = 3'b110;
    b = 3'b101;
    #10;
    
    $finish;
  end
  
  // Monitoreo
  always @(sum) begin
    $display("a = %b, b = %b, sum = %b", a, b, sum);
  end

endmodule
