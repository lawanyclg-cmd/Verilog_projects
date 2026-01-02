module tb_ripple_carry_adder;

    reg  [3:0] a, b;
    reg        cin;
    wire [3:0] sum;
    wire       cout;

    Ripple_carry_adder dut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, tb_ripple_carry_adder);

        a = 4'd3;  b = 4'd5;  cin = 0; #10;
        a = 4'd15; b = 4'd1;  cin = 0; #10;
        a = 4'd7;  b = 4'd8;  cin = 1; #10;

        $finish;
    end
endmodule
