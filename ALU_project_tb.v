module testbench;

reg [3:0] A, B;
reg [2:0] sel;
wire [3:0] result;

alu_4bit uut(
    .A(A),
    .B(B),
    .sel(sel),
    .result(result)
);

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,testbench);

    A = 4'b1010; B = 4'b0011;

    sel = 3'b000; #10; // Addition
    sel = 3'b001; #10; // Subtraction
    sel = 3'b010; #10; // AND
    sel = 3'b011; #10; // OR
    sel = 3'b100; #10; // XOR
    sel = 3'b101; #10; // NOT
    sel = 3'b110; #10; // Left Shift
    sel = 3'b111; #10; // Right Shift

end

endmodule