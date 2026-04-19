
module full_adder(
    input a,b,cin,
    output sum,carry
    );
    
    wire w1,w2,w3;
    half_adder H1(.a(a),.b(b),.sum(w1),.carry(w2));
    half_adder H2(.a(w1),.b(cin),.sum(sum),.carry(w3));
    or OR1(carry,w2,w3)
    
endmodule
