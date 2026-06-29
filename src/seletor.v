module seletor (

    input E, D, P,
    output S
);

assign S = (~E[2] | (E[1] & E[0]));

endmodule