module tb_four_bit_full_adder;
    logic [3:0] tb_a;
    logic [3:0] tb_b;
    logic tb_cin;
    logic [3:0] tb_sum;
    logic tb_cout;

    four_bit_full_adder DUT(
        .a (tb_a),
        .b (tb_b),
        .Cin (tb_cin),
        .sum (tb_sum),
        .cout (tb_cout)
    );

    initial begin
        $display("Time| A[3:0] | B[3:0] | Cin | Sum[3:0] | Cout");
        tb_a = 4'b0000; tb_b = 4'b0101; tb_cin = 0; #10;
        $display("%0t| %b | %b | %0d | %b | %0d",$time,tb_a,tb_b,tb_cin,tb_sum,tb_cout);

        tb_a = 4'b1000; tb_b = 4'b1101; tb_cin = 0; #10;
        $display("%0t| %b | %b | %0d | %b | %0d",$time,tb_a,tb_b,tb_cin,tb_sum,tb_cout);

        tb_a = 4'b0110; tb_b = 4'b0111; tb_cin = 0; #10;
        $display("%0t| %b | %b | %0d | %b | %0d",$time,tb_a,tb_b,tb_cin,tb_sum,tb_cout);

        tb_a = 4'b0000; tb_b = 4'b1111; tb_cin = 0; #10;
        $display("%0t| %b | %b | %0d | %b | %0d",$time,tb_a,tb_b,tb_cin,tb_sum,tb_cout);

        tb_a = 4'b0011; tb_b = 4'b0001; tb_cin = 0; #10;
        $display("%0t| %b | %b | %0d | %b | %0d",$time,tb_a,tb_b,tb_cin,tb_sum,tb_cout);
    end
endmodule