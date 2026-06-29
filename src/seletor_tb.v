module seletor_tb ();

reg E, D, P;
wire S; 

//dump do sinal
initial begin
    $dumpfile("sim/seletor_tb.vcd"); 
    $dumpvars(0,seletor_tb);
end   

//instancia do codificador
seletor seletor (E,S);

//tabela verdade
initial begin
    E=0; D=0; P=0; #10
    E=0; D=0; P=1; #10
    E=0; D=1; P=0; #10
    E=0; D=1; P=1; #10
    E=1; D=0; P=0; #10
    E=1; D=0; P=1; #10
    E=1; D=1; P=0; #10
    E=1; D=1; P=1; #10

    $finish;
end   
endmodule