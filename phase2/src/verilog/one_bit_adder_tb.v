`timescale 1ns / 1ps  // Specify the timescale for simulation
module one_bit_adder_tb;
// Inputs
reg A;
reg B;
reg Cin;

// Outputs
wire Sum;
wire Cout;
wire AxorB_out;
wire AandB_out;
wire PandCin_out;

// Initial block for testbench stimulus
initial begin
    // Test case 1: A=0, B=0, Cin=0
    A = 0;
    B = 0;
    Cin = 0;
    #10;
    $display("Test Case 1: A=%b, B=%b, Cin=%b, Sum=%b, Cout=%b", A, B, Cin, Sum, Cout);

    // Test case 2: A=1, B=1, Cin=0
    A = 1;
    B = 1;
    Cin = 0;
    #10;  // Wait for 10 time units
    $display("Test Case 2: A=%b, B=%b, Cin=%b, Sum=%b, Cout=%b", A, B, Cin, Sum, Cout);

    A = 0;
    B = 1;
    Cin = 0;
    #10;  // Wait for 10 time units
    $display("Test Case 2: A=%b, B=%b, Cin=%b, Sum=%b, Cout=%b", A, B, Cin, Sum, Cout);

    A = 1;
    B = 1;
    Cin = 1;
    #10;  // Wait for 10 time units
    $display("Test Case 2: A=%b, B=%b, Cin=%b, Sum=%b, Cout=%b", A, B, Cin, Sum, Cout);

    $stop;

end

// Instantiate the one-bit adder module
one_bit_adder uut(
    .A(A),
    .B(B),
    .Cin(Cin),
    .Sum(Sum),
    .Cout(Cout),
    .AxorB_out(AxorB_out),
    .AandB_out(AandB_out),
    .PandCin_out(PandCin_out)
);

endmodule

