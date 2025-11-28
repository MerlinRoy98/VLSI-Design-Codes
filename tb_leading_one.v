module tb_leading_one();

reg  [7:0] check_bits;
wire [3:0] ld_o;

leading_one dut (.check_bits(check_bits),.ld_o(ld_o));

initial begin
    
    // Test Case 1: YOUR EXAMPLE - 0000_1110
    check_bits = 8'b0000_1110;
    #10;
  $display("Test 1: Input = 8'b%b (0x%d)", check_bits, check_bits);
  $display("        Leading 1 at bit position (decimal): %0d", ld_o);
    // Test Case 3: Leading 1 at bit 0 (rightmost)
    check_bits = 8'b0010_1101;
    #10;
  $display("Test 3: Input = 8'b%b (0x%d)", check_bits, check_bits);
  $display("Leading 1 at bit position (decimal): %0d", ld_o);
    


    $finish;
end

endmodule
