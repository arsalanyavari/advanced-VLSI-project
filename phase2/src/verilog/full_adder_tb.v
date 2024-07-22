`timescale 1ns / 1ps

module full_adder_tb;

  // Parameters
  parameter INPUT_SIZE = 8;

  // Inputs
  reg [INPUT_SIZE - 1:0] A, B;
  reg Cin;

  // Outputs
  wire [INPUT_SIZE - 1:0] Sum;
  wire Cout;

  wire [INPUT_SIZE - 1 : 0] AxorB_out;
  wire [INPUT_SIZE - 1 : 0] AandB_out;
  wire [INPUT_SIZE - 1 : 0] PandCin_out;

  wire [INPUT_SIZE - 1 : 0] Cin_out;

  // Instantiate the full adder module
  full_adder #(INPUT_SIZE) uut (
    .A(A),
    .B(B),
    .Cin(Cin),
    .Sum(Sum),
    .Cout(Cout),
    .AxorB_out(AxorB_out),
    .AandB_out(AandB_out),
    .PandCin_out(PandCin_out),
    .Cin_out(Cin_out)
  );

  // Initial block for testbench stimulus
  initial begin
// Test case 1: A=74, B=51
    A = 8'b01001010;
    B = 8'b00110011;
    Cin = 1'b0;
    #10; // Allow some time for the signals to stabilize
    $display("Test Case 1: A=%b, B=%b, Sum=%b, Cout=%b", A, B, Sum, Cout);

    // Test case 2: A=127, B=129
    A = 8'b01111111;
    B = 8'b10000001;
    Cin = 1'b0;
    #10; // Allow some time for the signals to stabilize
    $display("Test Case 2: A=%b, B=%b, Sum=%b, Cout=%b", A, B, Sum, Cout);

    // Test case 1: A=2, B=17
    A = 2;
    B = 17;
    Cin = 1'b0;
    #10; // Allow some time for the signals to stabilize
    $display("Test Case 1: A=%b, B=%b, Sum=%b, Cout=%b", A, B, Sum, Cout);

    // Test case 2: A=100, B=64
    A = 100;
    B = 64;
    Cin = 1'b1;
    #10; // Allow some time for the signals to stabilize
    $display("Test Case 2: A=%b, B=%b, Sum=%b, Cout=%b", A, B, Sum, Cout);
    // Test case 1: A=1, B=64
    A = 1;
    B = 64;
    Cin = 1'b1;
    #10; // Allow some time for the signals to stabilize
    $display("Test Case 1: A=%b, B=%b, Sum=%b, Cout=%b", A, B, Sum, Cout);

    // Test case 2: A=1, B=71
    A = 1;
    B = 71;
    Cin = 1'b0;
    #10; // Allow some time for the signals to stabilize
    $display("Test Case 2: A=%b, B=%b, Sum=%b, Cout=%b", A, B, Sum, Cout);
    // Test case 1: A=3, B=51
    A = 3;
    B = 51;
    Cin = 1'b0;
    #10; // Allow some time for the signals to stabilize
    $display("Test Case 1: A=%b, B=%b, Sum=%b, Cout=%b", A, B, Sum, Cout);

    // Test case 2: A=247, B=4
    A = 247;
    B = 4;
    Cin = 1'b0;
    #10; // Allow some time for the signals to stabilize
    $display("Test Case 2: A=%b, B=%b, Sum=%b, Cout=%b", A, B, Sum, Cout);
    // Test case 1: A=74, B=51
    A = 74;
    B = 51;
    Cin = 1'b0;
    #10; // Allow some time for the signals to stabilize
    $display("Test Case 1: A=%b, B=%b, Sum=%b, Cout=%b", A, B, Sum, Cout);

    // Test case 2: A=0, B=89
    A = 0;
    B = 89;
    Cin = 1'b1;
    #10; // Allow some time for the signals to stabilize
    $display("Test Case 2: A=%b, B=%b, Sum=%b, Cout=%b", A, B, Sum, Cout);

    // Test case 1: A=4, B=3, Cin=0
    A = 0;
    B = 3;
    Cin = 0;
    #10;  // Wait for 10 time units
    $display("Test Case 1: A=%b, B=%b, Cin=%b, Sum=%b, Cout=%b", A, B, Cin, Sum, Cout);

    // Test case 2: A=7, B=7, Cin=1
    A = 0;
    B = 5;
    Cin = 1;
    #10;  // Wait for 10 time units
    $display("Test Case 2: A=%b, B=%b, Cin=%b, Sum=%b, Cout=%b", A, B, Cin, Sum, Cout);

    // Test case 1: A=4, B=3, Cin=0
    A = 1;
    B = 4;
    Cin = 0;
    #10;  // Wait for 10 time units
    $display("Test Case 1: A=%b, B=%b, Cin=%b, Sum=%b, Cout=%b", A, B, Cin, Sum, Cout);

    // Test case 2: A=7, B=7, Cin=1
    A = 7;
    B = 10;
    Cin = 0;
    #10;  // Wait for 10 time units
    $display("Test Case 2: A=%b, B=%b, Cin=%b, Sum=%b, Cout=%b", A, B, Cin, Sum, Cout);

    // Test case 1: A=4, B=3, Cin=0
    A = 3;
    B = 6;
    Cin = 0;
    #10;  // Wait for 10 time units
    $display("Test Case 1: A=%b, B=%b, Cin=%b, Sum=%b, Cout=%b", A, B, Cin, Sum, Cout);

    // Test case 2: A=7, B=7, Cin=1
    A = 5;
    B = 7;
    Cin = 0;
    #10;  // Wait for 10 time units
    $display("Test Case 2: A=%b, B=%b, Cin=%b, Sum=%b, Cout=%b", A, B, Cin, Sum, Cout);

    // Test case 1: A=4, B=3, Cin=0
    A = 10;
    B = 12;
    Cin = 0;
    #10;  // Wait for 10 time units
    $display("Test Case 1: A=%b, B=%b, Cin=%b, Sum=%b, Cout=%b", A, B, Cin, Sum, Cout);

    // Test case 2: A=7, B=7, Cin=1
    A = 11;
    B = 34;
    Cin = 1;
    #10;  // Wait for 10 time units
    $display("Test Case 2: A=%b, B=%b, Cin=%b, Sum=%b, Cout=%b", A, B, Cin, Sum, Cout);

    // Test case 1: A=4, B=3, Cin=0
    A = 23;
    B = 49;
    Cin = 0;
    #10;  // Wait for 10 time units
    $display("Test Case 1: A=%b, B=%b, Cin=%b, Sum=%b, Cout=%b", A, B, Cin, Sum, Cout);

    // Test case 2: A=7, B=7, Cin=1
    A = 9;
    B = 50;
    Cin = 1;
    #10;  // Wait for 10 time units
    $display("Test Case 2: A=%b, B=%b, Cin=%b, Sum=%b, Cout=%b", A, B, Cin, Sum, Cout);




    // Test case 1: A=74, B=51
    A = 8'b01001010;
    B = 8'b00110011;
    Cin = 1'b0;
    #10; // Allow some time for the signals to stabilize
    $display("Test Case 1: A=%b, B=%b, Sum=%b, Cout=%b", A, B, Sum, Cout);

    // Test case 2: A=127, B=129
    A = 8'b01111111;
    B = 8'b10000001;
    Cin = 1'b0;
    #10; // Allow some time for the signals to stabilize
    $display("Test Case 2: A=%b, B=%b, Sum=%b, Cout=%b", A, B, Sum, Cout);

    // Test case 1: A=2, B=17
    A = 231;
    B = 211;
    Cin = 1'b0;
    #10; // Allow some time for the signals to stabilize
    $display("Test Case 1: A=%b, B=%b, Sum=%b, Cout=%b", A, B, Sum, Cout);

    // Test case 2: A=100, B=64
    A = 100;
    B = 250;
    Cin = 1'b1;
    #10; // Allow some time for the signals to stabilize
    $display("Test Case 2: A=%b, B=%b, Sum=%b, Cout=%b", A, B, Sum, Cout);
    // Test case 1: A=1, B=64
    A = 63;
    B = 64;
    Cin = 1'b1;
    #10; // Allow some time for the signals to stabilize
    $display("Test Case 1: A=%b, B=%b, Sum=%b, Cout=%b", A, B, Sum, Cout);

    // Test case 2: A=1, B=71
    A = 1;
    B = 71;
    Cin = 1'b0;
    #10; // Allow some time for the signals to stabilize
    $display("Test Case 2: A=%b, B=%b, Sum=%b, Cout=%b", A, B, Sum, Cout);
    // Test case 1: A=3, B=51
    A = 216;
    B = 111;
    Cin = 1'b0;
    #10; // Allow some time for the signals to stabilize
    $display("Test Case 1: A=%b, B=%b, Sum=%b, Cout=%b", A, B, Sum, Cout);

    // Test case 2: A=247, B=4
    A = 178;
    B = 117;
    Cin = 1'b0;
    #10; // Allow some time for the signals to stabilize
    $display("Test Case 2: A=%b, B=%b, Sum=%b, Cout=%b", A, B, Sum, Cout);
    // Test case 1: A=74, B=51
    A = 114;
    B = 97;
    Cin = 1'b0;
    #10; // Allow some time for the signals to stabilize
    $display("Test Case 1: A=%b, B=%b, Sum=%b, Cout=%b", A, B, Sum, Cout);

    // Test case 2: A=0, B=89
    A = 187;
    B = 78;
    Cin = 1'b1;
    #10; // Allow some time for the signals to stabilize
    $display("Test Case 2: A=%b, B=%b, Sum=%b, Cout=%b", A, B, Sum, Cout);

    // Test case 1: A=4, B=3, Cin=0
    A = 215;
    B = 242;
    Cin = 0;
    #10;  // Wait for 10 time units
    $display("Test Case 1: A=%b, B=%b, Cin=%b, Sum=%b, Cout=%b", A, B, Cin, Sum, Cout);

    // Test case 2: A=7, B=7, Cin=1
    A = 94;
    B = 76;
    Cin = 1;
    #10;  // Wait for 10 time units
    $display("Test Case 2: A=%b, B=%b, Cin=%b, Sum=%b, Cout=%b", A, B, Cin, Sum, Cout);

    // Test case 1: A=4, B=3, Cin=0
    A = 188;
    B = 58;
    Cin = 0;
    #10;  // Wait for 10 time units
    $display("Test Case 1: A=%b, B=%b, Cin=%b, Sum=%b, Cout=%b", A, B, Cin, Sum, Cout);

    // Test case 2: A=7, B=7, Cin=1
    A = 201;
    B = 10;
    Cin = 0;
    #10;  // Wait for 10 time units
    $display("Test Case 2: A=%b, B=%b, Cin=%b, Sum=%b, Cout=%b", A, B, Cin, Sum, Cout);

    // Test case 1: A=4, B=3, Cin=0
    A = 5;
    B = 167;
    Cin = 0;
    #10;  // Wait for 10 time units
    $display("Test Case 1: A=%b, B=%b, Cin=%b, Sum=%b, Cout=%b", A, B, Cin, Sum, Cout);

    // Test case 2: A=7, B=7, Cin=1
    A = 211;
    B = 217;
    Cin = 0;
    #10;  // Wait for 10 time units
    $display("Test Case 2: A=%b, B=%b, Cin=%b, Sum=%b, Cout=%b", A, B, Cin, Sum, Cout);

    // Test case 1: A=4, B=3, Cin=0
    A = 129;
    B = 79;
    Cin = 0;
    #10;  // Wait for 10 time units
    $display("Test Case 1: A=%b, B=%b, Cin=%b, Sum=%b, Cout=%b", A, B, Cin, Sum, Cout);

    // Test case 2: A=7, B=7, Cin=1
    A = 190;
    B = 68;
    Cin = 1;
    #10;  // Wait for 10 time units
    $display("Test Case 2: A=%b, B=%b, Cin=%b, Sum=%b, Cout=%b", A, B, Cin, Sum, Cout);

    // Test case 1: A=4, B=3, Cin=0
    A = 145;
    B = 159;
    Cin = 0;
    #10;  // Wait for 10 time units
    $display("Test Case 1: A=%b, B=%b, Cin=%b, Sum=%b, Cout=%b", A, B, Cin, Sum, Cout);

    // Test case 2: A=7, B=7, Cin=1
    A = 251;
    B = 250;
    Cin = 1;
    #10;  // Wait for 10 time units
    $display("Test Case 2: A=%b, B=%b, Cin=%b, Sum=%b, Cout=%b", A, B, Cin, Sum, Cout);

    $stop;  // Stop simulation
  end

endmodule

