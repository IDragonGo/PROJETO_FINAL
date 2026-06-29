module motorista (

    input P,
    input [3:0] VE,
    input [3:0] VD,
    
    output [3:0] Q,
    output [1:0] V,
    output B
);

//Instanciando os blocos

//Saída Q
//Codificadores

wire [2:0] c_direita, c_esquerda; 
wire [1:0]s_direita, s_esquerda;
wire d_direita, d_esquerda;

codificador codificador_direita (

    .E(VD),
    .S(c_direita)

);

codificador codificador_esquerda (

    .E(VE),
    .S(c_esquerda)

);

//Somador
somador_3b somador (

    .a(c_direita),
    .b(c_esquerda),
    .s(Q[2:0]),
    .co(Q[3])

);

//Saída B

//Detectores
detector detector_direita (

    .E(VD),
    .S(d_direita)

);

detector detector_esquerda (

    .E(VE),
    .S(d_esquerda)

);

//Seletor do bloco

seletor seletor_bloco(

    .E(d_esquerda),
    .D(d_direita),
    .P(P),
    .S(B)

);

//Saídas V

//Seletores de Vaga

vaga vaga_direita (

    .E(VD),
    .S(s_direita)

);

vaga vaga_esquerda (

    .E(VE),
    .S(s_esquerda)

);

//MUX

mux22a mux22 (

    .dado_a(s_direita),
    .dado_b(s_esquerda),
    .s(B),
    .y(V)

);


endmodule