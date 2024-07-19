module full_adder (
    input a,
    input b,
    input cin,
    output sum,
    output cout
);
    assign {cout, sum} = a + b + cin;
endmodule

module ripple_carry_adder (
    input [7:0] a,
    input [7:0] b,
    input cin,
    output [7:0] sum,
    output cout
);
    wire [7:0] carry;

    full_adder fa0 (
        .a(a[0]),
        .b(b[0]),
        .cin(cin),
        .sum(sum[0]),
        .cout(carry[0])
    );

    generate
        genvar i;
        for (i = 1; i < 8; i = i + 1) begin: adder_stage
            full_adder fa (
                .a(a[i]),
                .b(b[i]),
                .cin(carry[i-1]),
                .sum(sum[i]),
                .cout(carry[i])
            );
        end
    endgenerate

    assign cout = carry[7];
endmodule

