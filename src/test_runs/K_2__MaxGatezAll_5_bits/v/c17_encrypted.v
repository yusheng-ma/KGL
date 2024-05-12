// Benchmark "./test_runs/K_2__MaxGatezAll_5_bits/c17_encrypted" written by ABC on Sun Apr 28 12:34:52 2024

module c17_encrypted  ( 
    G1gat, G2gat, G3gat, G6gat, G7gat, keyinput0, keyinput1, keyinput2,
    keyinput3, keyinput4, keyinput5, keyinput6, keyinput7, keyinput8,
    keyinput9,
    G22gat, G23gat  );
  input  G1gat, G2gat, G3gat, G6gat, G7gat, keyinput0, keyinput1,
    keyinput2, keyinput3, keyinput4, keyinput5, keyinput6, keyinput7,
    keyinput8, keyinput9;
  output G22gat, G23gat;
  wire new_G10gat, new_G11gat, new_G16gat, new_G19gat, new_not_0, new_not_1,
    new_and_2, new_not_3, new_not_4, new_not_5, new_and_6, new_not_7,
    new_not_8, new_not_9, new_and_10, new_not_12, new_not_13, new_and_14,
    new_not_15, new_not_16, new_not_17, new_and_18, new_not_19, new_not_20,
    new_not_21, new_and_22;
  assign new_G10gat = new_and_10 | new_and_2 | new_and_6;
  assign new_G11gat = new_and_22 | new_and_14 | new_and_18;
  assign new_G16gat = ~G2gat | ~new_G11gat;
  assign new_G19gat = ~new_G11gat | ~G7gat;
  assign G22gat = ~new_G10gat | ~new_G16gat;
  assign G23gat = ~new_G16gat | ~new_G19gat;
  assign new_not_0 = ~G1gat;
  assign new_not_1 = ~G3gat;
  assign new_and_2 = keyinput4 & keyinput3 & keyinput2 & keyinput1 & keyinput0 & new_not_0 & new_not_1;
  assign new_not_3 = ~G1gat;
  assign new_not_4 = ~keyinput0;
  assign new_not_5 = ~keyinput2;
  assign new_and_6 = keyinput4 & keyinput3 & new_not_5 & keyinput1 & new_not_4 & new_not_3 & G3gat;
  assign new_not_7 = ~G3gat;
  assign new_not_8 = ~keyinput0;
  assign new_not_9 = ~keyinput1;
  assign new_and_10 = keyinput4 & keyinput3 & keyinput2 & new_not_9 & new_not_8 & G1gat & new_not_7;
  assign new_not_12 = ~G3gat;
  assign new_not_13 = ~G6gat;
  assign new_and_14 = keyinput9 & keyinput8 & keyinput7 & keyinput6 & keyinput5 & new_not_12 & new_not_13;
  assign new_not_15 = ~G6gat;
  assign new_not_16 = ~keyinput5;
  assign new_not_17 = ~keyinput7;
  assign new_and_18 = keyinput9 & keyinput8 & new_not_17 & keyinput6 & new_not_16 & G3gat & new_not_15;
  assign new_not_19 = ~G3gat;
  assign new_not_20 = ~keyinput5;
  assign new_not_21 = ~keyinput6;
  assign new_and_22 = keyinput9 & keyinput8 & keyinput7 & new_not_21 & new_not_20 & new_not_19 & G6gat;
endmodule
