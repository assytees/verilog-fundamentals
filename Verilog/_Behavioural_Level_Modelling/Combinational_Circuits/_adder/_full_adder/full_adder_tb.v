//*****************************************************************************
// Module Name : full_adder_tb
// Author      : Abubakar Shuaibu
// Date        : 05 July 2026
// Description :
// Testbench for the 1-bit Full Adder.
// This testbench applies all possible combinations of the inputs (A, B, Cin)
// to verify the correctness of the Full Adder outputs (Sum and Cout).
//*****************************************************************************

module full_adder_tb;

    // Declare the test inputs as registers because they will be
    // assigned values during simulation.
    reg A, B, Cin;

    // Declare the outputs as wires because they are driven by
    // the instantiated Full Adder module.
    wire Sum, Cout;

    // Instantiate the Device Under Test (DUT).
    // The DUT is the Full Adder module being tested.
    full_adder dut(

        .A(A),          // Connect testbench signal A to DUT input A
        .B(B),          // Connect testbench signal B to DUT input B
        .Cin(Cin),      // Connect testbench signal Cin to DUT input Cin
        .Sum(Sum),      // Connect DUT output Sum to testbench wire Sum
        .Cout(Cout)     // Connect DUT output Cout to testbench wire Cout

    );

    // Initial block used to generate stimulus (test input values).
    initial begin

        // Display simulation results whenever any listed signal changes.
        // %0t = simulation time
        // %b  = binary value
        $monitor("Time=%0t A=%b B=%b Cin=%b Sum=%b Cout=%b",
                  $time, A, B, Cin, Sum, Cout);

        // Apply every possible input combination to the Full Adder.
        // Each new test vector is applied after a delay of 10 time units.

        A = 0; B = 0; Cin = 0;    // Test Case 1: 000
        #10 A = 0; B = 0; Cin = 1; // Test Case 2: 001
        #10 A = 0; B = 1; Cin = 0; // Test Case 3: 010
        #10 A = 0; B = 1; Cin = 1; // Test Case 4: 011
        #10 A = 1; B = 0; Cin = 0; // Test Case 5: 100
        #10 A = 1; B = 0; Cin = 1; // Test Case 6: 101
        #10 A = 1; B = 1; Cin = 0; // Test Case 7: 110
        #10 A = 1; B = 1; Cin = 1; // Test Case 8: 111

        // End the simulation after the final test case.
        #10 $finish;

    end

    // Initial block used to generate waveform data for debugging.
    initial begin

        // Create an FSDB waveform dump file.
        $fsdbDumpfile("dump.fsdb");

        // Dump all variables in this testbench and its instantiated modules.
        // Level 0 indicates the entire design hierarchy below full_adder_tb.
        $fsdbDumpvars(0, full_adder_tb);

    end

endmodule // End of the Full Adder testbench