module mux22a(

    input[1:0] dado_a,
    input[1:0] dado_b,
    input s,
    output [1:0] y

);

mux21a mux0(
        .A(dado_a[0]), 
        .B(dado_b[0]), 
        .S(s),
        .Y(y[0]) 
    );

mux21a mux1(
        .A(dado_a[1]), 
        .B(dado_b[1]), 
        .S(s),
        .Y(y[1]) 
    );

endmodule 