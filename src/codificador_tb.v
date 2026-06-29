module codificador_tb ();

reg [3:0]E;
wire [2:0]S; 

//dump do sinal
initial begin
    $dumpfile("sim/codificador_tb.vcd"); 
    $dumpvars(0,codificador_tb);
end   

//instancia do codificador
codificador codificador1 (E,S);

//tabela verdade
initial begin
    E=10'd0; #10
    E=10'd1; #10
    E=10'd2; #10
    E=10'd3; #10
    E=10'd4; #10
    E=10'd5; #10
    E=10'd6; #10
    E=10'd7; #10
    E=10'd8; #10
    E=10'd9; #10
    E=10'd10; #10
    E=10'd11; #10
    E=10'd12; #10
    E=10'd13; #10
    E=10'd14; #10
    E=10'd15; #10

    $finish;
end   
endmodule