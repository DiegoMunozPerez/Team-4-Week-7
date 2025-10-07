module top (

 input [9:0]sw,
 output [13:0]led
 
 );
 
 half_sub uut(
 
    .Y(led[0]),
    .Borrow(led[1]),
    .A(sw[0]),
    .B(sw[1])
    
);
    wire z, carry1;
    
    ones_compliment lsb(
    
    .A(sw[2]),
    .B(sw[6]),
    .Y(z),
    .C_out(carry1)
    
);

    wire y, carry2;
    
    ones_compliment bit2(
    
    .C_in(carry1),
    .A(sw[3]),
    .B(sw[7]),
    .Y(y),
    .C_out(carry2)
    
);

    wire x, carry3;
    ones_compliment bit3(
    
    .C_in(carry2),
    .A(sw[4]),
    .B(sw[8]),
    .Y(x),
    .C_out(carry3)
);
    wire w,carry4;
    ones_compliment bit4(
    
    .C_in(carry3),
    .A(sw[5]),
    .B(sw[9]),
    .Y(w),
    .C_out(carry4)
);
    wire carry5;
    ones_compliment ha0(
    
    .A(z),
    .B(carry4),
    .Y(led[2]),
    .C_out(carry5)
    
);

    wire carry6;
    ones_compliment ha1(
    
    .A(y),
    .B(carry5),
    .Y(led[3]),
    .C_out(carry6)
);

    wire carry7;
    ones_compliment ha2(
    
    .A(x),
    .B(carry6),
    .Y(led[4]),
    .C_out(carry7)
);

   ones_compliment ha3(
   
   .A(w),
   .B(carry7),
   .Y(led[5])
);
    wire wire1;
    wire led6;
    assign led[6]=led6;
    twos_compliment first(
    
    .A(sw[2]),
    .B(1'b1),
    .C_out(wire1),
    .Y(led6),
    .C_in(1'b0)
 );
 wire wire2;
 wire led7;
    assign led[7]=led7;
    twos_compliment seconed(
    
    .A(sw[3]),
    .B(1'b0),
    .C_out(wire2),
    .Y(led7),
    .C_in(wire1)
 );
  wire wire3;
  wire led8;
    assign led[8]=led8;
    twos_compliment third(
    
    .A(sw[4]),
    .B(1'b0),
    .C_out(wire3),
    .Y(led8),
    .C_in(wire2)
 );
 wire wire4;
 wire led9;
    assign led[9]=led9;
    twos_compliment fourth(
    
    .A(sw[5]),
    .B(1'b0),
    .C_out(wire4),
    .Y(led9),
    .C_in(wire3)
 );
 
  wire wire5;
  wire led10;
    assign led[10]=led10;
    twos_compliment fifth(
    
    .A(sw[6]),
    .B(1'b0),
    .C_out(wire5),
    .Y(led10),
    .C_in(wire4)
 );
 
  wire wire6;
  wire led11;
    assign led[11]=led11;
    twos_compliment sixth(
    
    .A(sw[7]),
    .B(1'b0),
    .C_out(wire6),
    .Y(led11),
    .C_in(wire5)
 );
 
  wire wire7;
  wire led12;
    assign led[12]=led12;
    twos_compliment seventh(
    
    .A(sw[8]),
    .B(1'b0),
    .C_out(wire7),
    .Y(led12),
    .C_in(wire6)
 );
 
    wire led13;
    assign led[13]=led13;
    twos_compliment eighth(
    
    .A(sw[9]),
    .B(1'b0),
    .Y(led13),
    .C_in(wire7)
 );
endmodule 