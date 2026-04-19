module ripple_carry_adder_tb();

    reg [3:0] a, b;
    reg cin;
    wire [3:0] sum;
    wire carry;

    // DUT instantiation
    ripple_carry_adder DUT(
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(carry)
    );

    initial begin
        $monitor("a=%b b=%b cin=%b | sum=%b carry=%b", a, b, cin, sum, carry);

        // Test case 1
        a = 4'b0000; b = 4'b0000; cin = 0;
        #10;

        // Test case 2
        a = 4'b1010; b = 4'b0110; cin = 1;
        #10;

        // Test case 3
        a = 4'b1111; b = 4'b0001; cin = 0;
        #10;

        // Test case 4
        a = 4'b1111; b = 4'b1111; cin = 1;
        #10;
