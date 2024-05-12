// Benchmark "./test_runs/_3_4_5_k=2/iscas85/PowerRun/c17_encrypted" written by ABC on Thu Apr 18 14:26:07 2024

module c17_encrypted  ( 
    G1gat, G2gat, G3gat, G6gat, G7gat, keyinput0, keyinput1, keyinput2,
    keyinput3, keyinput4, keyinput5,
    G22gat, G23gat  );
  input  G1gat, G2gat, G3gat, G6gat, G7gat, keyinput0, keyinput1,
    keyinput2, keyinput3, keyinput4, keyinput5;
  output G22gat, G23gat;
  wire new_G10gat, new_G11gat, new_G16gat, new_G19gat, new_not_0, new_not_1,
    new_not_2, new_and_3, new_not_4, new_not_5, new_not_6, new_and_7,
    new_not_8, new_not_9, new_and_10, new_not_12, new_not_13, new_not_14,
    new_and_15, new_not_16, new_not_17, new_not_18, new_and_19, new_not_20,
    new_not_21, new_and_22;
  assign new_G10gat = new_and_10 | new_and_3 | new_and_7;
  assign new_G11gat = new_and_22 | new_and_15 | new_and_19;
  assign new_G16gat = ~G2gat | ~new_G11gat;
  assign new_G19gat = ~new_G11gat | ~G7gat;
  assign G22gat = ~new_G10gat | ~new_G16gat;
  assign G23gat = ~new_G16gat | ~new_G19gat;
  assign new_not_0 = ~G1gat;
  assign new_not_1 = ~G3gat;
  assign new_not_2 = ~keyinput0;
  assign new_and_3 = keyinput2 & keyinput1 & new_not_2 & new_not_0 & new_not_1;
  assign new_not_4 = ~G3gat;
  assign new_not_5 = ~keyinput1;
  assign new_not_6 = ~keyinput2;
  assign new_and_7 = new_not_6 & new_not_5 & keyinput0 & G1gat & new_not_4;
  assign new_not_8 = ~G1gat;
  assign new_not_9 = ~keyinput1;
  assign new_and_10 = keyinput2 & new_not_9 & keyinput0 & new_not_8 & G3gat;
  assign new_not_12 = ~G3gat;
  assign new_not_13 = ~G6gat;
  assign new_not_14 = ~keyinput3;
  assign new_and_15 = keyinput5 & keyinput4 & new_not_14 & new_not_12 & new_not_13;
  assign new_not_16 = ~G3gat;
  assign new_not_17 = ~keyinput4;
  assign new_not_18 = ~keyinput5;
  assign new_and_19 = new_not_18 & new_not_17 & keyinput3 & new_not_16 & G6gat;
  assign new_not_20 = ~G6gat;
  assign new_not_21 = ~keyinput4;
  assign new_and_22 = keyinput5 & new_not_21 & keyinput3 & G3gat & new_not_20;
endmodule
