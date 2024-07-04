module tb_booth_multiplier;
    reg clk;
    reg reset;
    reg [3:0] multiplicand;
    reg [3:0] multiplier;
    wire [7:0] product;
    wire done;

    booth_multiplier uut (
        .clk(clk),
        .reset(reset),
        .multiplicand(multiplicand),
        .multiplier(multiplier),
        .product(product),
        .done(done)
    );

    // Clock generation
    initial begin
        clk = 1;
        forever #10 clk = ~clk; // 10ns period clock
    end

    // Test sequence
    initial begin
        // Monitor outputs
        $monitor("At time %t, multiplicand = %b (%d), multiplier = %b (%d), product = %b (%d), done = %b",
                 $time, multiplicand, multiplicand, multiplier, multiplier, product, product, done);
        
        // Test Case 1: -5 * -7
        reset = 1;
        multiplicand = 4'b1011; // -5
        multiplier = 4'b1001; // -7
        #20 reset = 0;
        wait (done);
        
        // Test Case 2: 3 * -4
        #10 reset = 1;
        multiplicand = 4'b0011; // 3
        multiplier = 4'b1100; // -4
        #10 reset = 0;
        wait (done);

        // Test Case 3: 2 * 2
        #10 reset = 1;
        multiplicand = 4'b0010; // 2
        multiplier = 4'b0010; // 2
        #10 reset = 0;
        wait (done);
        
        // Test Case 4: -1 * 1
        #10 reset = 1;
        multiplicand = 4'b1111; // -1
        multiplier = 4'b0001; // 1
        #10 reset = 0;
        wait (done);
        
        // Test Case 5: 0 * 0
        #10 reset = 1;
        multiplicand = 4'b0000; // 0
        multiplier = 4'b0000; // 0
        #10 reset = 0;
        wait (done);

        // Test Case 6: 7 * 1
        #10 reset = 1;
        multiplicand = 4'b0111; // 7
        multiplier = 4'b0001; // 1
        #10 reset = 0;
        wait (done);

        //#10 $stop; // Stop the simulation
        
    end
endmodule
