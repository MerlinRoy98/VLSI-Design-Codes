module leading_one(input wire [7:0] check_bits,
                   output reg [3:0] ld_o); 
      always_comb begin
        casex(check_bits)
      
            8'b00000001 : ld_o = 4'd1;
            8'b0000001x : ld_o = 4'd2;
            8'b000001xx : ld_o = 4'd3;
            8'b00001xxx : ld_o = 4'd4;
            8'b0001xxxx : ld_o = 4'd5;
            8'b001xxxxx : ld_o = 4'd6;
            8'b0xxxxxxx : ld_o = 4'd7;
            8'b1xxxxxxx : ld_o = 4'd8;
            default :     ld_o = 4'd0;
            endcase
            
          end
endmodule
          
