// Benchmark "./test_runs/locking_all_input_gatesK2/c17_encrypted" written by ABC on Thu Apr 18 19:52:12 2024

module c17_encrypted  ( 
    G1gat, G2gat, G3gat, G6gat, G7gat, keyinput0, keyinput1, keyinput2,
    keyinput3, keyinput4, keyinput5,
    G22gat, G23gat  );
  input  G1gat, G2gat, G3gat, G6gat, G7gat, keyinput0, keyinput1,
    keyinput2, keyinput3, keyinput4, keyinput5;
  output G22gat, G23gat;
  wire new_G10gat, new_G11gat, new_G16gat, new_G19gat, new_not_0, new_not_1,
    new_not_2, new_and_3, new_not_4, new_not_5, new_not_6, new_and_7,
    new_not_8, new_not_9, new_not_10, new_and_11, new_not_13, new_not_14,
    new_not_15, new_and_16, new_not_17, new_not_18, new_not_19, new_and_20,
    new_not_21, new_not_22, new_not_23, new_and_24;
  assign new_G10gat = new_and_11 | new_and_3 | new_and_7;
  assign new_G11gat = new_and_24 | new_and_16 | new_and_20;
  assign new_G16gat = ~G2gat | ~new_G11gat;
  assign new_G19gat = ~new_G11gat | ~G7gat;
  assign G22gat = ~new_G10gat | ~new_G16gat;
  assign G23gat = ~new_G16gat | ~new_G19gat;
  assign new_not_0 = ~G1gat;
  assign new_not_1 = ~G3gat;
  assign new_not_2 = ~keyinput2;
  assign new_and_3 = new_not_2 & keyinput1 & keyinput0 & new_not_0 & new_not_1;
  assign new_not_4 = ~G1gat;
  assign new_not_5 = ~keyinput0;
  assign new_not_6 = ~keyinput1;
  assign new_and_7 = keyinput2 & new_not_6 & new_not_5 & new_not_4 & G3gat;
  assign new_not_8 = ~G3gat;
  assign new_not_9 = ~keyinput0;
  assign new_not_10 = ~keyinput1;
  assign new_and_11 = keyinput2 & new_not_10 & new_not_9 & G1gat & new_not_8;
  assign new_not_13 = ~G3gat;
  assign new_not_14 = ~G6gat;
  assign new_not_15 = ~keyinput5;
  assign new_and_16 = new_not_15 & keyinput4 & keyinput3 & new_not_13 & new_not_14;
  assign new_not_17 = ~G3gat;
  assign new_not_18 = ~keyinput3;
  assign new_not_19 = ~keyinput4;
  assign new_and_20 = keyinput5 & new_not_19 & new_not_18 & new_not_17 & G6gat;
  assign new_not_21 = ~G6gat;
  assign new_not_22 = ~keyinput3;
  assign new_not_23 = ~keyinput4;
  assign new_and_24 = keyinput5 & new_not_23 & new_not_22 & G3gat & new_not_21;
endmodule
