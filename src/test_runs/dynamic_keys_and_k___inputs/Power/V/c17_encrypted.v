// Benchmark "./test_runs/dynamic_keys_and_k___inputs/Power/c17_encrypted" written by ABC on Thu Apr 18 16:03:16 2024

module c17_encrypted  ( 
    G1gat, G2gat, G3gat, G6gat, G7gat, keyinput0, keyinput1, keyinput2,
    keyinput3,
    G22gat, G23gat  );
  input  G1gat, G2gat, G3gat, G6gat, G7gat, keyinput0, keyinput1,
    keyinput2, keyinput3;
  output G22gat, G23gat;
  wire new_G10gat, new_G11gat, new_G16gat, new_G19gat, new_not_0, new_not_1,
    new_not_2, new_not_3, new_and_4, new_not_5, new_and_6, new_not_7,
    new_and_8, new_not_10, new_not_11, new_not_12, new_not_13, new_and_14,
    new_not_15, new_and_16, new_not_17, new_and_18;
  assign new_G10gat = new_and_8 | new_and_4 | new_and_6;
  assign new_G11gat = new_and_18 | new_and_14 | new_and_16;
  assign new_G16gat = ~G2gat | ~new_G11gat;
  assign new_G19gat = ~new_G11gat | ~G7gat;
  assign G22gat = ~new_G10gat | ~new_G16gat;
  assign G23gat = ~new_G16gat | ~new_G19gat;
  assign new_not_0 = ~G1gat;
  assign new_not_1 = ~G3gat;
  assign new_not_2 = ~keyinput0;
  assign new_not_3 = ~keyinput1;
  assign new_and_4 = new_not_3 & new_not_2 & new_not_0 & new_not_1;
  assign new_not_5 = ~G1gat;
  assign new_and_6 = keyinput1 & keyinput0 & new_not_5 & G3gat;
  assign new_not_7 = ~G3gat;
  assign new_and_8 = keyinput1 & keyinput0 & G1gat & new_not_7;
  assign new_not_10 = ~G3gat;
  assign new_not_11 = ~G6gat;
  assign new_not_12 = ~keyinput2;
  assign new_not_13 = ~keyinput3;
  assign new_and_14 = new_not_13 & new_not_12 & new_not_10 & new_not_11;
  assign new_not_15 = ~G3gat;
  assign new_and_16 = keyinput3 & keyinput2 & new_not_15 & G6gat;
  assign new_not_17 = ~G6gat;
  assign new_and_18 = keyinput3 & keyinput2 & G3gat & new_not_17;
endmodule
