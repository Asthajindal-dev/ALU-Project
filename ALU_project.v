module alu_4bit(
    input [3:0] A,
    input [3:0] B,
    input [2:0] sel,
    output reg [3:0] result
);

always @(*) begin
    case(sel)
        3'b000: result = A + B; // Addition
        3'b001: result = A - B; // Subtraction
        3'b010: result = A & B; // AND
        3'b011: result = A | B; // OR
        3'b100: result = A ^ B; // XOR
        3'b101: result = ~A;    // NOT A
        3'b110: result = A << 1;// Left Shift
        3'b111: result = A >> 1;// Right Shift
    endcase
end

endmodule