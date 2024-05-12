// Benchmark "./benchmarks/iscas85/c499" written by ABC on Sun Apr 28 12:32:38 2024

module c499  ( 
    Gid0, Gid1, Gid2, Gid3, Gid4, Gid5, Gid6, Gid7, Gid8, Gid9, Gid10,
    Gid11, Gid12, Gid13, Gid14, Gid15, Gid16, Gid17, Gid18, Gid19, Gid20,
    Gid21, Gid22, Gid23, Gid24, Gid25, Gid26, Gid27, Gid28, Gid29, Gid30,
    Gid31, Gic0, Gic1, Gic2, Gic3, Gic4, Gic5, Gic6, Gic7, Gr,
    God0, God1, God2, God3, God4, God5, God6, God7, God8, God9, God10,
    God11, God12, God13, God14, God15, God16, God17, God18, God19, God20,
    God21, God22, God23, God24, God25, God26, God27, God28, God29, God30,
    God31  );
  input  Gid0, Gid1, Gid2, Gid3, Gid4, Gid5, Gid6, Gid7, Gid8, Gid9,
    Gid10, Gid11, Gid12, Gid13, Gid14, Gid15, Gid16, Gid17, Gid18, Gid19,
    Gid20, Gid21, Gid22, Gid23, Gid24, Gid25, Gid26, Gid27, Gid28, Gid29,
    Gid30, Gid31, Gic0, Gic1, Gic2, Gic3, Gic4, Gic5, Gic6, Gic7, Gr;
  output God0, God1, God2, God3, God4, God5, God6, God7, God8, God9, God10,
    God11, God12, God13, God14, God15, God16, God17, God18, God19, God20,
    God21, God22, God23, God24, God25, God26, God27, God28, God29, God30,
    God31;
  wire new_Gxa0, new_Gxa1, new_Gxa2, new_Gxa3, new_Gxa4, new_Gxa5, new_Gxa6,
    new_Gxa7, new_Gxa8, new_Gxa9, new_Gxa10, new_Gxa11, new_Gxa12,
    new_Gxa13, new_Gxa14, new_Gxa15, new_Gh0, new_Gh1, new_Gh2, new_Gh3,
    new_Gh4, new_Gh5, new_Gh6, new_Gh7, new_Gxb0, new_Gxc0, new_Gxb1,
    new_Gxc1, new_Gxb2, new_Gxc2, new_Gxb3, new_Gxc3, new_Gxb4, new_Gxc4,
    new_Gxb5, new_Gxc5, new_Gxb6, new_Gxc6, new_Gxb7, new_Gxc7, new_Gf0,
    new_Gf1, new_Gf2, new_Gf3, new_Gf4, new_Gf5, new_Gf6, new_Gf7,
    new_Gxe0, new_Gxe1, new_Gxe2, new_Gxe3, new_Gxe4, new_Gxe5, new_Gxe6,
    new_Gxe7, new_Gg0, new_Gg1, new_Gg2, new_Gg3, new_Gg4, new_Gg5,
    new_Gg6, new_Gg7, new_Gxd0, new_Gxd1, new_Gxd2, new_Gxd3, new_Gxd4,
    new_Gxd5, new_Gxd6, new_Gxd7, new_Gs0, new_Gs1, new_Gs2, new_Gs3,
    new_Gs4, new_Gs5, new_Gs6, new_Gs7, new_Gy0a, new_Gy1a, new_Gy2a,
    new_Gy0b, new_Gy1b, new_Gy3b, new_Gy0c, new_Gy2c, new_Gy3c, new_Gy1d,
    new_Gy2d, new_Gy3d, new_Gy5i, new_Gy7i, new_Gy5j, new_Gy6j, new_Gy4k,
    new_Gy7k, new_Gy4l, new_Gy6l, new_Gy4a, new_Gy5a, new_Gy6a, new_Gy4b,
    new_Gy5b, new_Gy7b, new_Gy4c, new_Gy6c, new_Gy7c, new_Gy5d, new_Gy6d,
    new_Gy7d, new_Gy1i, new_Gy3i, new_Gy1j, new_Gy2j, new_Gy0k, new_Gy3k,
    new_Gy0l, new_Gy2l, new_Gt0, new_Gt1, new_Gt2, new_Gt3, new_Gt4,
    new_Gt5, new_Gt6, new_Gt7, new_Gu0, new_Gu1, new_Gwa, new_Gwb, new_Gwc,
    new_Gwd, new_Gwe, new_Gwf, new_Gwg, new_Gwh, new_Ge0, new_Ge1, new_Ge2,
    new_Ge3, new_Ge4, new_Ge5, new_Ge6, new_Ge7, new_Ge8, new_Ge9,
    new_Ge10, new_Ge11, new_Ge12, new_Ge13, new_Ge14, new_Ge15, new_Ge16,
    new_Ge17, new_Ge18, new_Ge19, new_Ge20, new_Ge21, new_Ge22, new_Ge23,
    new_Ge24, new_Ge25, new_Ge26, new_Ge27, new_Ge28, new_Ge29, new_Ge30,
    new_Ge31;
  assign new_Gxa0 = Gid0 ^ Gid1;
  assign new_Gxa1 = Gid2 ^ Gid3;
  assign new_Gxa2 = Gid4 ^ Gid5;
  assign new_Gxa3 = Gid6 ^ Gid7;
  assign new_Gxa4 = Gid8 ^ Gid9;
  assign new_Gxa5 = Gid10 ^ Gid11;
  assign new_Gxa6 = Gid12 ^ Gid13;
  assign new_Gxa7 = Gid14 ^ Gid15;
  assign new_Gxa8 = Gid16 ^ Gid17;
  assign new_Gxa9 = Gid18 ^ Gid19;
  assign new_Gxa10 = Gid20 ^ Gid21;
  assign new_Gxa11 = Gid22 ^ Gid23;
  assign new_Gxa12 = Gid24 ^ Gid25;
  assign new_Gxa13 = Gid26 ^ Gid27;
  assign new_Gxa14 = Gid28 ^ Gid29;
  assign new_Gxa15 = Gid30 ^ Gid31;
  assign new_Gh0 = Gic0 & Gr;
  assign new_Gh1 = Gic1 & Gr;
  assign new_Gh2 = Gic2 & Gr;
  assign new_Gh3 = Gic3 & Gr;
  assign new_Gh4 = Gic4 & Gr;
  assign new_Gh5 = Gic5 & Gr;
  assign new_Gh6 = Gic6 & Gr;
  assign new_Gh7 = Gic7 & Gr;
  assign new_Gxb0 = Gid0 ^ Gid4;
  assign new_Gxc0 = Gid8 ^ Gid12;
  assign new_Gxb1 = Gid1 ^ Gid5;
  assign new_Gxc1 = Gid9 ^ Gid13;
  assign new_Gxb2 = Gid2 ^ Gid6;
  assign new_Gxc2 = Gid10 ^ Gid14;
  assign new_Gxb3 = Gid3 ^ Gid7;
  assign new_Gxc3 = Gid11 ^ Gid15;
  assign new_Gxb4 = Gid16 ^ Gid20;
  assign new_Gxc4 = Gid24 ^ Gid28;
  assign new_Gxb5 = Gid17 ^ Gid21;
  assign new_Gxc5 = Gid25 ^ Gid29;
  assign new_Gxb6 = Gid18 ^ Gid22;
  assign new_Gxc6 = Gid26 ^ Gid30;
  assign new_Gxb7 = Gid19 ^ Gid23;
  assign new_Gxc7 = Gid27 ^ Gid31;
  assign new_Gf0 = new_Gxa0 ^ new_Gxa1;
  assign new_Gf1 = new_Gxa2 ^ new_Gxa3;
  assign new_Gf2 = new_Gxa4 ^ new_Gxa5;
  assign new_Gf3 = new_Gxa6 ^ new_Gxa7;
  assign new_Gf4 = new_Gxa8 ^ new_Gxa9;
  assign new_Gf5 = new_Gxa10 ^ new_Gxa11;
  assign new_Gf6 = new_Gxa12 ^ new_Gxa13;
  assign new_Gf7 = new_Gxa14 ^ new_Gxa15;
  assign new_Gxe0 = new_Gxb0 ^ new_Gxc0;
  assign new_Gxe1 = new_Gxb1 ^ new_Gxc1;
  assign new_Gxe2 = new_Gxb2 ^ new_Gxc2;
  assign new_Gxe3 = new_Gxb3 ^ new_Gxc3;
  assign new_Gxe4 = new_Gxb4 ^ new_Gxc4;
  assign new_Gxe5 = new_Gxb5 ^ new_Gxc5;
  assign new_Gxe6 = new_Gxb6 ^ new_Gxc6;
  assign new_Gxe7 = new_Gxb7 ^ new_Gxc7;
  assign new_Gg0 = new_Gf0 ^ new_Gf1;
  assign new_Gg1 = new_Gf2 ^ new_Gf3;
  assign new_Gg2 = new_Gf0 ^ new_Gf2;
  assign new_Gg3 = new_Gf1 ^ new_Gf3;
  assign new_Gg4 = new_Gf4 ^ new_Gf5;
  assign new_Gg5 = new_Gf6 ^ new_Gf7;
  assign new_Gg6 = new_Gf4 ^ new_Gf6;
  assign new_Gg7 = new_Gf5 ^ new_Gf7;
  assign new_Gxd0 = new_Gh0 ^ new_Gg4;
  assign new_Gxd1 = new_Gh1 ^ new_Gg5;
  assign new_Gxd2 = new_Gh2 ^ new_Gg6;
  assign new_Gxd3 = new_Gh3 ^ new_Gg7;
  assign new_Gxd4 = new_Gh4 ^ new_Gg0;
  assign new_Gxd5 = new_Gh5 ^ new_Gg1;
  assign new_Gxd6 = new_Gh6 ^ new_Gg2;
  assign new_Gxd7 = new_Gh7 ^ new_Gg3;
  assign new_Gs0 = new_Gxe0 ^ new_Gxd0;
  assign new_Gs1 = new_Gxe1 ^ new_Gxd1;
  assign new_Gs2 = new_Gxe2 ^ new_Gxd2;
  assign new_Gs3 = new_Gxe3 ^ new_Gxd3;
  assign new_Gs4 = new_Gxe4 ^ new_Gxd4;
  assign new_Gs5 = new_Gxe5 ^ new_Gxd5;
  assign new_Gs6 = new_Gxe6 ^ new_Gxd6;
  assign new_Gs7 = new_Gxe7 ^ new_Gxd7;
  assign new_Gy0a = ~new_Gs0;
  assign new_Gy1a = ~new_Gs1;
  assign new_Gy2a = ~new_Gs2;
  assign new_Gy0b = ~new_Gs0;
  assign new_Gy1b = ~new_Gs1;
  assign new_Gy3b = ~new_Gs3;
  assign new_Gy0c = ~new_Gs0;
  assign new_Gy2c = ~new_Gs2;
  assign new_Gy3c = ~new_Gs3;
  assign new_Gy1d = ~new_Gs1;
  assign new_Gy2d = ~new_Gs2;
  assign new_Gy3d = ~new_Gs3;
  assign new_Gy5i = ~new_Gs5;
  assign new_Gy7i = ~new_Gs7;
  assign new_Gy5j = ~new_Gs5;
  assign new_Gy6j = ~new_Gs6;
  assign new_Gy4k = ~new_Gs4;
  assign new_Gy7k = ~new_Gs7;
  assign new_Gy4l = ~new_Gs4;
  assign new_Gy6l = ~new_Gs6;
  assign new_Gy4a = ~new_Gs4;
  assign new_Gy5a = ~new_Gs5;
  assign new_Gy6a = ~new_Gs6;
  assign new_Gy4b = ~new_Gs4;
  assign new_Gy5b = ~new_Gs5;
  assign new_Gy7b = ~new_Gs7;
  assign new_Gy4c = ~new_Gs4;
  assign new_Gy6c = ~new_Gs6;
  assign new_Gy7c = ~new_Gs7;
  assign new_Gy5d = ~new_Gs5;
  assign new_Gy6d = ~new_Gs6;
  assign new_Gy7d = ~new_Gs7;
  assign new_Gy1i = ~new_Gs1;
  assign new_Gy3i = ~new_Gs3;
  assign new_Gy1j = ~new_Gs1;
  assign new_Gy2j = ~new_Gs2;
  assign new_Gy0k = ~new_Gs0;
  assign new_Gy3k = ~new_Gs3;
  assign new_Gy0l = ~new_Gs0;
  assign new_Gy2l = ~new_Gs2;
  assign new_Gt0 = new_Gs3 & new_Gy2a & new_Gy0a & new_Gy1a;
  assign new_Gt1 = new_Gy3b & new_Gs2 & new_Gy0b & new_Gy1b;
  assign new_Gt2 = new_Gy3c & new_Gy2c & new_Gy0c & new_Gs1;
  assign new_Gt3 = new_Gy3d & new_Gy2d & new_Gs0 & new_Gy1d;
  assign new_Gt4 = new_Gs7 & new_Gy6a & new_Gy4a & new_Gy5a;
  assign new_Gt5 = new_Gy7b & new_Gs6 & new_Gy4b & new_Gy5b;
  assign new_Gt6 = new_Gy7c & new_Gy6c & new_Gy4c & new_Gs5;
  assign new_Gt7 = new_Gy7d & new_Gy6d & new_Gs4 & new_Gy5d;
  assign new_Gu0 = new_Gt3 | new_Gt2 | new_Gt0 | new_Gt1;
  assign new_Gu1 = new_Gt7 | new_Gt6 | new_Gt4 | new_Gt5;
  assign new_Gwa = new_Gu0 & new_Gy7i & new_Gs6 & new_Gs4 & new_Gy5i;
  assign new_Gwb = new_Gu0 & new_Gs7 & new_Gy6j & new_Gs4 & new_Gy5j;
  assign new_Gwc = new_Gu0 & new_Gy7k & new_Gs6 & new_Gy4k & new_Gs5;
  assign new_Gwd = new_Gu0 & new_Gs7 & new_Gy6l & new_Gy4l & new_Gs5;
  assign new_Gwe = new_Gu1 & new_Gy3i & new_Gs2 & new_Gs0 & new_Gy1i;
  assign new_Gwf = new_Gu1 & new_Gs3 & new_Gy2j & new_Gs0 & new_Gy1j;
  assign new_Gwg = new_Gu1 & new_Gy3k & new_Gs2 & new_Gy0k & new_Gs1;
  assign new_Gwh = new_Gu1 & new_Gs3 & new_Gy2l & new_Gy0l & new_Gs1;
  assign new_Ge0 = new_Gs0 & new_Gwa;
  assign new_Ge1 = new_Gs1 & new_Gwa;
  assign new_Ge2 = new_Gs2 & new_Gwa;
  assign new_Ge3 = new_Gs3 & new_Gwa;
  assign new_Ge4 = new_Gs0 & new_Gwb;
  assign new_Ge5 = new_Gs1 & new_Gwb;
  assign new_Ge6 = new_Gs2 & new_Gwb;
  assign new_Ge7 = new_Gs3 & new_Gwb;
  assign new_Ge8 = new_Gs0 & new_Gwc;
  assign new_Ge9 = new_Gs1 & new_Gwc;
  assign new_Ge10 = new_Gs2 & new_Gwc;
  assign new_Ge11 = new_Gs3 & new_Gwc;
  assign new_Ge12 = new_Gs0 & new_Gwd;
  assign new_Ge13 = new_Gs1 & new_Gwd;
  assign new_Ge14 = new_Gs2 & new_Gwd;
  assign new_Ge15 = new_Gs3 & new_Gwd;
  assign new_Ge16 = new_Gs4 & new_Gwe;
  assign new_Ge17 = new_Gs5 & new_Gwe;
  assign new_Ge18 = new_Gs6 & new_Gwe;
  assign new_Ge19 = new_Gs7 & new_Gwe;
  assign new_Ge20 = new_Gs4 & new_Gwf;
  assign new_Ge21 = new_Gs5 & new_Gwf;
  assign new_Ge22 = new_Gs6 & new_Gwf;
  assign new_Ge23 = new_Gs7 & new_Gwf;
  assign new_Ge24 = new_Gs4 & new_Gwg;
  assign new_Ge25 = new_Gs5 & new_Gwg;
  assign new_Ge26 = new_Gs6 & new_Gwg;
  assign new_Ge27 = new_Gs7 & new_Gwg;
  assign new_Ge28 = new_Gs4 & new_Gwh;
  assign new_Ge29 = new_Gs5 & new_Gwh;
  assign new_Ge30 = new_Gs6 & new_Gwh;
  assign new_Ge31 = new_Gs7 & new_Gwh;
  assign God0 = Gid0 ^ new_Ge0;
  assign God1 = Gid1 ^ new_Ge1;
  assign God2 = Gid2 ^ new_Ge2;
  assign God3 = Gid3 ^ new_Ge3;
  assign God4 = Gid4 ^ new_Ge4;
  assign God5 = Gid5 ^ new_Ge5;
  assign God6 = Gid6 ^ new_Ge6;
  assign God7 = Gid7 ^ new_Ge7;
  assign God8 = Gid8 ^ new_Ge8;
  assign God9 = Gid9 ^ new_Ge9;
  assign God10 = Gid10 ^ new_Ge10;
  assign God11 = Gid11 ^ new_Ge11;
  assign God12 = Gid12 ^ new_Ge12;
  assign God13 = Gid13 ^ new_Ge13;
  assign God14 = Gid14 ^ new_Ge14;
  assign God15 = Gid15 ^ new_Ge15;
  assign God16 = Gid16 ^ new_Ge16;
  assign God17 = Gid17 ^ new_Ge17;
  assign God18 = Gid18 ^ new_Ge18;
  assign God19 = Gid19 ^ new_Ge19;
  assign God20 = Gid20 ^ new_Ge20;
  assign God21 = Gid21 ^ new_Ge21;
  assign God22 = Gid22 ^ new_Ge22;
  assign God23 = Gid23 ^ new_Ge23;
  assign God24 = Gid24 ^ new_Ge24;
  assign God25 = Gid25 ^ new_Ge25;
  assign God26 = Gid26 ^ new_Ge26;
  assign God27 = Gid27 ^ new_Ge27;
  assign God28 = Gid28 ^ new_Ge28;
  assign God29 = Gid29 ^ new_Ge29;
  assign God30 = Gid30 ^ new_Ge30;
  assign God31 = Gid31 ^ new_Ge31;
endmodule
