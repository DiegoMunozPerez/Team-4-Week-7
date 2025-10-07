module twos_compliment (

    input A, B, C_in,
    output Y, C_out
);
    
    assign Y = ~A ^ B ^ C_in;
    assign C_out = (~A&B) | (B&C_in) | (~A&C_in);


endmodule
