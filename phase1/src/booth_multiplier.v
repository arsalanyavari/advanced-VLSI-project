module booth_multiplier (
    input wire clk,
    input wire reset,
    input wire [3:0] multiplicand,
    input wire [3:0] multiplier,
    output reg [7:0] product,
    output reg done
);
    reg [3:0] A, M, Q;
    reg Q_1;
    reg [2:0] count;
    reg [7:0] temp_product;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            A <= 4'b0;
            Q <= multiplier;
            Q_1 <= 1'b0;
            M <= multiplicand;
            count <= 3'b100; // 4 iterations
            done <= 1'b0;
            product <= 8'b0;
            temp_product <= 8'b0;
        end else if (count > 0) begin
            case ({Q[0], Q_1})
                2'b01: A <= A + M;
                2'b10: A <= A - M;
                default: A <= A;
            endcase

            // Arithmetic right shift
            Q_1 <= Q[0];
            Q <= {A[0], Q[3:1]};
            A <= {A[3], A[3:1]}; // preserve sign bit of A

            count <= count - 1;
        end else if (count == 0) begin
            temp_product <= {A, Q};
            product <= temp_product;
            done <= 1'b1;
        end
    end
endmodule
