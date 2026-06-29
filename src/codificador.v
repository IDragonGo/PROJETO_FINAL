CODIFICADOR.V

module codificador (
	input [3:0]E, //Entradas
	output [2:0]S //Saídas
);

assign S[2] = 	~E[3] & ~E[2] & ~E[1] & ~E[0];

assign S[1] = 	(E[3] | E[2] | E[1] | E[0]) & 
				(~E[3] | ~E[2] | ~E[0]) & 
				(~E[3] | ~E[2] | ~E[1]) & 
				(~E[2] | ~E[1] | ~E[0]) & 
				(~E[3] | ~E[1] | ~E[0]);

assign S[0] = 	(~E[3] & E[2] & ~E[1] & ~E[0]) |
				(E[3] & ~E[2] & ~E[1] & ~E[0])|
				(~E[3] & ~E[2] & ~E[1] & E[0]) |
				(E[3] & E[2] & ~E[1] & E[0]) |
				(~E[3] & E[2] & E[1] & E[0]) |
				(E[3] & ~E[2] & E[1] & E[0]) |
				(~E[3] & ~E[2] & E[1] & ~E[0]) |
				(E[3] & E[2] & E[1] & ~E[0]);

endmodule