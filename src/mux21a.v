module  mux21a (
        input A, // entrada de dados A
        input B, // entrada de dados B
        input S, // seleção
        output Y // saída do mux
    );
    assign Y = (~S&A) | (S&B); 
endmodule