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
    input clk,
    input rst,
    input [7:0] a,
    input [7:0] b,
    input cin,
    output reg [7:0] sum,
    output reg cout
);
    reg [7:0] a_reg, b_reg;
    reg cin_reg;
    wire [7:0] carry;
    wire [7:0] sum_wire;
    wire cout_wire;

always @(posedge clk or posedge rst) begin
    if (rst) begin
        a_reg <= 8'd0;
        b_reg <= 8'd0;
        cin_reg <= 1'b0;
        end else begin
        a_reg <= a;
        b_reg <= b;
    cin_reg <= cin;
    end
end

full_adder fa0 (
    .a(a_reg[0]),
    .b(b_reg[0]),
    .cin(cin_reg),
    .sum(sum_wire[0]),
    .cout(carry[0])
);

generate
genvar i;
for (i = 1; i < 8; i = i + 1) begin: adder_stage
    full_adder fa (
    .a(a_reg[i]),
    .b(b_reg[i]),
    .cin(carry[i-1]),
    .sum(sum_wire[i]),
    .cout(carry[i])
    );
end
endgenerate

assign cout_wire = carry[7];

always @(posedge clk or posedge rst) begin
if (rst) begin
    sum <= 8'd0;
    cout <= 1'b0;
    end else begin
    sum <= sum_wire;
    cout <= cout_wire;
end
end
endmodule