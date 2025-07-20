module fullAdder(
    input logic a,
    input logic b,
    input logic cin,
    output logic sum,
    output logic cout
);
    logic xor1_out;
    logic and1_out;
    logic and2_out;

    xor xor1_inst(xor1_out, a, b);

    xor xor2_inst(sum, xor1_out, cin);

    and and1_inst(and1_out, xor1_out, cin);

    and and2_inst(and2_out, a, b);

    or or_inst(cout, and1_out, and2_out);

endmodule

module four_bit_full_adder (
    input logic[3:0] a,
    input logic[3:0] b,
    input logic Cin,
    output logic[3:0] sum,
    output logic cout
);
    logic c1;
    logic c2;
    logic c3;

    fullAdder f0(
        .a (a[0]),
        .b (b[0]),
        .cin (Cin),
        .sum (sum[0]),
        .cout (c1)
    );

    fullAdder f1(
        .a (a[1]),
        .b (b[1]),
        .cin (c1),
        .sum (sum[1]),
        .cout (c2)
    );

    fullAdder f2(
        .a (a[2]),
        .b (b[2]),
        .cin (c2),
        .sum (sum[2]),
        .cout (c3)
    );

    fullAdder f3(
        .a (a[3]),
        .b (b[3]),
        .cin (c3),
        .sum (sum[3]),
        .cout (cout)
    );

endmodule