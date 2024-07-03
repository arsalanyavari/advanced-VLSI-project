module booth_multiplier (
    input wire clk,
    input wire reset,
    input wire [3:0] multiplicand,
    input wire [3:0] multiplier,
    output reg [7:0] product,
    output reg done,
    output reg [3:0] A_out,
    output reg [3:0] M_out,
    output reg [3:0] Q_out,
    output reg Q_1_out,
    output reg [3:0] tempA

);
reg [3:0] A;
reg [3:0] M;
reg [3:0] Q;
reg Q_1;
reg [2:0] count;
reg [1:0] temp;
reg A_0_temp;

always @(posedge clk or posedge reset) begin
    if (reset) begin
        A = 4'b0;
        Q = multiplier;
        Q_1 = 1'b0;
        M = multiplicand;
        count = 3'b100; // 4 iterations
        done = 1'b0;
        product = 8'b0;
    end else if (count > 0) begin
        temp =  {Q[0], Q_1};
        tempA = A;
        case (temp)
            2'b01: A = A + M;
            2'b10: A = A - M;
            default: A = A;
        endcase

    // Arithmetic right shift
        //{A, Q, Q_1} = {A[3], A, Q[3:1], Q[0]};

        A_0_temp = A[0]; 
        A = {A[3], A[3:1]};
        Q_1 = Q[0];
        Q = {A_0_temp, Q[3:1]};

        A_out = A;
        Q_out = Q;
        Q_1 = Q_1;

        count = count - 1;
        product = {A[3:0], Q[3:0]};

        end else if (count == 0) begin
            product = {A[3:0], Q[3:0]};
            done = 1'b1;
        end
    end
endmodule