// Benchmark "./test_runs/k_2____MaxGates_10____5bits/c17_encrypted" written by ABC on Fri Apr 26 21:29:05 2024

module c17_encrypted  ( 
    G1gat, G2gat, G3gat, G6gat, G7gat, keyinput0, keyinput1, keyinput2,
    keyinput3, keyinput4, keyinput5, keyinput6, keyinput7, keyinput8,
    keyinput9,
    G22gat, G23gat  );
  input  G1gat, G2gat, G3gat, G6gat, G7gat, keyinput0, keyinput1,
    keyinput2, keyinput3, keyinput4, keyinput5, keyinput6, keyinput7,
    keyinput8, keyinput9;
  output G22gat, G23gat;
  wire new_n18, new_n19, new_n20, new_n21, new_n22, new_n23, new_n24,
    new_n25, new_n26, new_n27, new_n28, new_n29, new_n30, new_n31, new_n32,
    new_n33, new_n34, new_n35, new_n36, new_n37, new_n38, new_n39, new_n40,
    new_n41, new_n42, new_n43, new_n44, new_n45, new_n46, new_n47, new_n48,
    new_n49, new_n50, new_n51, new_n52, new_n53, new_n54, new_n55, new_n56,
    new_n57, new_n58, new_n60;
  assign new_n18 = ~G1gat & ~G3gat;
  assign new_n19 = ~keyinput0 & new_n18;
  assign new_n20 = keyinput1 & new_n19;
  assign new_n21 = keyinput2 & new_n20;
  assign new_n22 = ~keyinput3 & new_n21;
  assign new_n23 = keyinput4 & new_n22;
  assign new_n24 = ~G1gat & G3gat;
  assign new_n25 = ~keyinput0 & new_n24;
  assign new_n26 = keyinput1 & new_n25;
  assign new_n27 = keyinput2 & new_n26;
  assign new_n28 = ~keyinput3 & new_n27;
  assign new_n29 = ~keyinput4 & new_n28;
  assign new_n30 = G1gat & ~G3gat;
  assign new_n31 = keyinput0 & new_n30;
  assign new_n32 = keyinput1 & new_n31;
  assign new_n33 = ~keyinput2 & new_n32;
  assign new_n34 = ~keyinput3 & new_n33;
  assign new_n35 = ~keyinput4 & new_n34;
  assign new_n36 = ~new_n23 & ~new_n29;
  assign new_n37 = ~new_n35 & new_n36;
  assign new_n38 = ~G3gat & ~G6gat;
  assign new_n39 = ~keyinput5 & new_n38;
  assign new_n40 = keyinput6 & new_n39;
  assign new_n41 = keyinput7 & new_n40;
  assign new_n42 = ~keyinput8 & new_n41;
  assign new_n43 = keyinput9 & new_n42;
  assign new_n44 = G3gat & ~G6gat;
  assign new_n45 = ~keyinput5 & new_n44;
  assign new_n46 = keyinput6 & new_n45;
  assign new_n47 = keyinput7 & new_n46;
  assign new_n48 = ~keyinput8 & new_n47;
  assign new_n49 = ~keyinput9 & new_n48;
  assign new_n50 = ~G3gat & G6gat;
  assign new_n51 = keyinput5 & new_n50;
  assign new_n52 = keyinput6 & new_n51;
  assign new_n53 = ~keyinput7 & new_n52;
  assign new_n54 = ~keyinput8 & new_n53;
  assign new_n55 = ~keyinput9 & new_n54;
  assign new_n56 = ~new_n43 & ~new_n49;
  assign new_n57 = ~new_n55 & new_n56;
  assign new_n58 = G2gat & ~new_n57;
  assign G22gat = new_n37 | new_n58;
  assign new_n60 = G7gat & ~new_n57;
  assign G23gat = new_n58 | new_n60;
endmodule
