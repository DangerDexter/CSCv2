// 8-bit PC
// (c) 2017 Warren Toomey, GPL3

module pc (
	input clk,		// Clock input
	input reset,		// Reset line
	input PCincr,		// Increment PC
	input  [7:0] data,	// Input data
	output [7:0] result	// PC output
  );

  // Output
  reg [7:0] internal_result;
  assign result= internal_result;

  always @(posedge clk) begin
    if (reset)
      internal_result <= 0;
    else
      if (PCincr==0)
      	internal_result <= data;
      else
        internal_result <= internal_result + 1;
  end

endmodule
