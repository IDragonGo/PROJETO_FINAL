module detector_tb ();

reg [3:0]E;
wire S; 

//dump do sinal
initial begin
    $dumpfile("sim/detector_tb.vcd"); 
    $dumpvars(0,detector_tb);
end   

//instancia do codificador
detector uut (E,S);

//tabela verdade
initial begin
    E=10'b0000; #10
    E=10'b0001; #10
    E=10'b0010; #10
    E=10'b0011; #10
    E=10'b0100; #10
    E=10'b0101; #10
    E=10'b0110; #10
    E=10'b0111; #10
    E=10'b1000; #10
    E=10'b1001; #10
    E=10'b1010; #10
    E=10'b1011; #10
    E=10'b1100; #10
    E=10'b1101; #10
    E=10'b1110; #10
    E=10'b1111; #10
    $finish;
end   
endmodule