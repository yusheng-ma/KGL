// Benchmark "./test_runs/K_2_MaxGates3_nDiv3_bits/c17_encrypted" written by ABC on Tue Apr 30 20:14:22 2024

module c17_encrypted  ( 
    G1gat, G2gat, G3gat, G6gat, G7gat, keyinput0, keyinput1, keyinput2,
    keyinput3, keyinput4, keyinput5,
    G22gat, G23gat  );
  input  G1gat, G2gat, G3gat, G6gat, G7gat, keyinput0, keyinput1,
    keyinput2, keyinput3, keyinput4, keyinput5;
  output G22gat, G23gat;
  wire new_G10gat, new_G11gat, new_G16gat, new_G19gat, new_not_0, new_not_1,
    new_not_2, new_and_3, new_not_4, new_not_5, new_not_6, new_and_7,
    new_not_8, new_and_9, new_not_11, new_not_12, new_not_13, new_and_14,
    new_not_15, new_not_16, new_not_17, new_and_18, new_not_19, new_and_20;
  assign new_G10gat = new_and_9 | new_and_3 | new_and_7;
  assign new_G11gat = new_and_20 | new_and_14 | new_and_18;
  assign new_G16gat = ~G2gat | ~new_G11gat;
  assign new_G19gat = ~new_G11gat | ~G7gat;
  assign G22gat = ~new_G10gat | ~new_G16gat;
  assign G23gat = ~new_G16gat | ~new_G19gat;
  assign new_not_0 = ~G1gat;
  assign new_not_1 = ~G3gat;
  assign new_not_2 = ~keyinput2;
  assign new_and_3 = new_not_2 & keyinput1 & keyinput0 & new_not_0 & new_not_1;
  assign new_not_4 = ~G3gat;
  assign new_not_5 = ~keyinput1;
  assign new_not_6 = ~keyinput2;
  assign new_and_7 = new_not_6 & new_not_5 & keyinput0 & G1gat & new_not_4;
  assign new_not_8 = ~G1gat;
  assign new_and_9 = keyinput2 & keyinput1 & keyinput0 & new_not_8 & G3gat;
  assign new_not_11 = ~G3gat;
  assign new_not_12 = ~G6gat;
  assign new_not_13 = ~keyinput5;
  assign new_and_14 = new_not_13 & keyinput4 & keyinput3 & new_not_11 & new_not_12;
  assign new_not_15 = ~G3gat;
  assign new_not_16 = ~keyinput4;
  assign new_not_17 = ~keyinput5;
  assign new_and_18 = new_not_17 & new_not_16 & keyinput3 & new_not_15 & G6gat;
  assign new_not_19 = ~G6gat;
  assign new_and_20 = keyinput5 & keyinput4 & keyinput3 & G3gat & new_not_19;
endmodule
