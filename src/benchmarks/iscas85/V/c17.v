// Benchmark "./benchmarks/iscas85/c17" written by ABC on Sun Apr 28 12:32:37 2024

module c17  ( 
    G1gat, G2gat, G3gat, G6gat, G7gat,
    G22gat, G23gat  );
  input  G1gat, G2gat, G3gat, G6gat, G7gat;
  output G22gat, G23gat;
  wire new_G10gat, new_G11gat, new_G16gat, new_G19gat;
  assign new_G10gat = ~G1gat | ~G3gat;
  assign new_G11gat = ~G3gat | ~G6gat;
  assign new_G16gat = ~G2gat | ~new_G11gat;
  assign new_G19gat = ~new_G11gat | ~G7gat;
  assign G22gat = ~new_G10gat | ~new_G16gat;
  assign G23gat = ~new_G16gat | ~new_G19gat;
endmodule
