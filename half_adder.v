
module half_adder(
    input a, b,
    output sum,carry
    );
    
    xor HA1(sum,a,b));
    and HA2(carry,a,b);
endmodule
