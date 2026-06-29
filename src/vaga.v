module vaga (
    input [3:0] E,
    output [1:0] S
);

// Configuração das saídas conforme o mapa de Karnaugh

// Configura a saída S1
assign S[1] = (E[1] & E[0]);

// Configura a saída S0
assign S[0] = ((~E[1] & E[0]) | (E[2] & E[1]));

endmodule