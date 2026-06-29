module topo (

    input [8:0] sw,

    output [6:0] hex0,
    output [6:0] hex1,
    output [6:0] hex2

);

wire        fio_B;
wire [1:0]  fio_V;
wire [3:0]  fio_Q;

//==============================
// Circuito principal
//==============================

motorista m1 (

    .P(sw[8]),
    .VE(sw[7:4]),
    .VD(sw[3:0]),
    .Q(fio_Q),
    .V(fio_V),
    .B(fio_B)

);

//==============================
// HEX0 -> Quantidade de vagas
//==============================

bcd_para_7seg bcd0 (

    .a(fio_Q[3]),
    .b(fio_Q[2]),
    .c(fio_Q[1]),
    .d(fio_Q[0]),

    .G(hex0[6]),
    .F(hex0[5]),
    .E(hex0[4]),
    .D(hex0[3]),
    .C(hex0[2]),
    .B(hex0[1]),
    .A(hex0[0])

);

//==============================
// HEX1 -> Bloco (0 ou 1)
//==============================

bcd_para_7seg bcd1 (

    .a(1'b0),
    .b(1'b0),
    .c(1'b0),
    .d(fio_B),

    .G(hex1[6]),
    .F(hex1[5]),
    .E(hex1[4]),
    .D(hex1[3]),
    .C(hex1[2]),
    .B(hex1[1]),
    .A(hex1[0])

);

//==============================
// HEX2 -> Número da vaga (0 a 3)
//==============================

bcd_para_7seg bcd2 (

    .a(1'b0),
    .b(1'b0),
    .c(fio_V[1]),
    .d(fio_V[0]),

    .G(hex2[6]),
    .F(hex2[5]),
    .E(hex2[4]),
    .D(hex2[3]),
    .C(hex2[2]),
    .B(hex2[1]),
    .A(hex2[0])

);

endmodule