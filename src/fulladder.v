module sumador_completo (
  input wire bit1, bit2, acarreo_in,
  output wire acarreo_out, suma_bit
);

  wire propaga, genera;  // señales internas para la propagación y la generación de acarreos
  
  assign propaga = bit1 ^ bit2;        // Para la propagacion del acarreo de entradas
  assign genera  = bit1 & bit2;        // genera acarreo por las entradas
  
  assign suma_bit   = propaga ^ acarreo_in;                     // Resultado de la suma 
  assign acarreo_out = genera | (propaga & acarreo_in);        // Acarreo de salida

endmodule
