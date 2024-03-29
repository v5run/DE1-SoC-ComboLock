module SevenSegmentDisplay(
  input wire Open,    // Open signal
  input wire Alarm,   // Alarm signal
  input wire New,     // New signal
  output reg [6:0] HEX5  // Seven-segment display HEX5
);

// Display segments for characters 'O,' 'A,' 'n,' and '-'
parameter SEG_O = 7'b0000001; // 'O'
parameter SEG_A = 7'b0001000; // 'A'
parameter SEG_n = 7'b0001001; // 'n'
parameter SEG_DASH = 7'b1111110; // '-'

always @* begin
  if (Alarm)
    HEX5 = SEG_A;
  else if (New)
    HEX5 = SEG_n;
  else if (Open)
    HEX5 = SEG_O;
  else
    HEX5 = SEG_DASH;
end

endmodule
