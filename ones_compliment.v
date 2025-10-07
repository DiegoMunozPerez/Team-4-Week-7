module ones_compliment(
    input A, B, C_in,
    output C_out, Y
);

assign Y = A ^ B ^ C_in;
assign C_out = (A&B) | (B&C_in) | (A&C_in);

endmodule 