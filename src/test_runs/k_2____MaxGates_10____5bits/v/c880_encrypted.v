// Benchmark "./test_runs/k_2____MaxGates_10____5bits/c880_encrypted" written by ABC on Fri Apr 26 21:29:08 2024

module c880_encrypted  ( 
    G1gat, G8gat, G13gat, G17gat, G26gat, G29gat, G36gat, G42gat, G51gat,
    G55gat, G59gat, G68gat, G72gat, G73gat, G74gat, G75gat, G80gat, G85gat,
    G86gat, G87gat, G88gat, G89gat, G90gat, G91gat, G96gat, G101gat,
    G106gat, G111gat, G116gat, G121gat, G126gat, G130gat, G135gat, G138gat,
    G143gat, G146gat, G149gat, G152gat, G153gat, G156gat, G159gat, G165gat,
    G171gat, G177gat, G183gat, G189gat, G195gat, G201gat, G207gat, G210gat,
    G219gat, G228gat, G237gat, G246gat, G255gat, G259gat, G260gat, G261gat,
    G267gat, G268gat, keyinput0, keyinput1, keyinput2, keyinput3,
    keyinput4, keyinput5, keyinput6, keyinput7, keyinput8, keyinput9,
    keyinput10, keyinput11, keyinput12, keyinput13, keyinput14, keyinput15,
    keyinput16, keyinput17, keyinput18, keyinput19, keyinput20, keyinput21,
    keyinput22, keyinput23, keyinput24, keyinput25, keyinput26, keyinput27,
    keyinput28, keyinput29, keyinput30, keyinput31, keyinput32, keyinput33,
    keyinput34, keyinput35, keyinput36, keyinput37, keyinput38, keyinput39,
    keyinput40, keyinput41, keyinput42, keyinput43, keyinput44, keyinput45,
    keyinput46, keyinput47, keyinput48, keyinput49,
    G388gat, G389gat, G390gat, G391gat, G418gat, G419gat, G420gat, G421gat,
    G422gat, G423gat, G446gat, G447gat, G448gat, G449gat, G450gat, G767gat,
    G768gat, G850gat, G863gat, G864gat, G865gat, G866gat, G874gat, G878gat,
    G879gat, G880gat  );
  input  G1gat, G8gat, G13gat, G17gat, G26gat, G29gat, G36gat, G42gat,
    G51gat, G55gat, G59gat, G68gat, G72gat, G73gat, G74gat, G75gat, G80gat,
    G85gat, G86gat, G87gat, G88gat, G89gat, G90gat, G91gat, G96gat,
    G101gat, G106gat, G111gat, G116gat, G121gat, G126gat, G130gat, G135gat,
    G138gat, G143gat, G146gat, G149gat, G152gat, G153gat, G156gat, G159gat,
    G165gat, G171gat, G177gat, G183gat, G189gat, G195gat, G201gat, G207gat,
    G210gat, G219gat, G228gat, G237gat, G246gat, G255gat, G259gat, G260gat,
    G261gat, G267gat, G268gat, keyinput0, keyinput1, keyinput2, keyinput3,
    keyinput4, keyinput5, keyinput6, keyinput7, keyinput8, keyinput9,
    keyinput10, keyinput11, keyinput12, keyinput13, keyinput14, keyinput15,
    keyinput16, keyinput17, keyinput18, keyinput19, keyinput20, keyinput21,
    keyinput22, keyinput23, keyinput24, keyinput25, keyinput26, keyinput27,
    keyinput28, keyinput29, keyinput30, keyinput31, keyinput32, keyinput33,
    keyinput34, keyinput35, keyinput36, keyinput37, keyinput38, keyinput39,
    keyinput40, keyinput41, keyinput42, keyinput43, keyinput44, keyinput45,
    keyinput46, keyinput47, keyinput48, keyinput49;
  output G388gat, G389gat, G390gat, G391gat, G418gat, G419gat, G420gat,
    G421gat, G422gat, G423gat, G446gat, G447gat, G448gat, G449gat, G450gat,
    G767gat, G768gat, G850gat, G863gat, G864gat, G865gat, G866gat, G874gat,
    G878gat, G879gat, G880gat;
  wire new_n137, new_n139, new_n142, new_n143, new_n144, new_n145, new_n146,
    new_n148, new_n149, new_n151, new_n152, new_n153, new_n155, new_n157,
    new_n160, new_n161, new_n162, new_n163, new_n164, new_n165, new_n166,
    new_n167, new_n168, new_n169, new_n170, new_n171, new_n172, new_n173,
    new_n174, new_n175, new_n176, new_n177, new_n178, new_n179, new_n183,
    new_n184, new_n185, new_n186, new_n187, new_n188, new_n189, new_n190,
    new_n191, new_n192, new_n193, new_n194, new_n195, new_n196, new_n197,
    new_n198, new_n199, new_n200, new_n201, new_n202, new_n203, new_n205,
    new_n206, new_n209, new_n210, new_n211, new_n212, new_n213, new_n214,
    new_n215, new_n216, new_n217, new_n218, new_n219, new_n220, new_n221,
    new_n222, new_n223, new_n224, new_n225, new_n226, new_n227, new_n228,
    new_n229, new_n230, new_n231, new_n232, new_n233, new_n234, new_n235,
    new_n236, new_n237, new_n238, new_n239, new_n240, new_n241, new_n242,
    new_n243, new_n244, new_n245, new_n246, new_n247, new_n248, new_n249,
    new_n250, new_n251, new_n252, new_n253, new_n254, new_n255, new_n256,
    new_n257, new_n258, new_n259, new_n260, new_n261, new_n262, new_n263,
    new_n264, new_n265, new_n266, new_n267, new_n268, new_n269, new_n270,
    new_n271, new_n272, new_n273, new_n274, new_n275, new_n276, new_n277,
    new_n278, new_n279, new_n280, new_n281, new_n282, new_n283, new_n284,
    new_n285, new_n286, new_n287, new_n288, new_n289, new_n290, new_n291,
    new_n292, new_n293, new_n294, new_n295, new_n296, new_n297, new_n298,
    new_n299, new_n300, new_n301, new_n302, new_n303, new_n304, new_n305,
    new_n306, new_n307, new_n308, new_n309, new_n310, new_n311, new_n312,
    new_n313, new_n314, new_n315, new_n316, new_n317, new_n318, new_n319,
    new_n320, new_n321, new_n322, new_n323, new_n324, new_n325, new_n326,
    new_n327, new_n328, new_n329, new_n330, new_n331, new_n332, new_n333,
    new_n334, new_n335, new_n336, new_n337, new_n338, new_n339, new_n340,
    new_n341, new_n342, new_n343, new_n344, new_n345, new_n346, new_n347,
    new_n348, new_n349, new_n350, new_n351, new_n352, new_n353, new_n354,
    new_n355, new_n356, new_n357, new_n358, new_n359, new_n360, new_n362,
    new_n363, new_n364, new_n365, new_n366, new_n367, new_n368, new_n369,
    new_n370, new_n371, new_n372, new_n373, new_n374, new_n375, new_n376,
    new_n377, new_n378, new_n379, new_n380, new_n381, new_n382, new_n383,
    new_n384, new_n385, new_n386, new_n387, new_n389, new_n390, new_n391,
    new_n392, new_n393, new_n394, new_n395, new_n396, new_n397, new_n398,
    new_n399, new_n400, new_n401, new_n402, new_n403, new_n404, new_n405,
    new_n406, new_n407, new_n408, new_n409, new_n410, new_n411, new_n412,
    new_n413, new_n414, new_n415, new_n416, new_n417, new_n418, new_n419,
    new_n420, new_n421, new_n422, new_n423, new_n424, new_n425, new_n426,
    new_n427, new_n428, new_n429, new_n430, new_n431, new_n432, new_n433,
    new_n434, new_n436, new_n437, new_n438, new_n439, new_n440, new_n441,
    new_n442, new_n443, new_n444, new_n445, new_n446, new_n447, new_n448,
    new_n449, new_n450, new_n451, new_n452, new_n453, new_n454, new_n455,
    new_n456, new_n457, new_n458, new_n459, new_n460, new_n461, new_n462,
    new_n463, new_n464, new_n465, new_n466, new_n467, new_n468, new_n469,
    new_n470, new_n471, new_n472, new_n473, new_n474, new_n475, new_n477,
    new_n478, new_n479, new_n480, new_n481, new_n482, new_n483, new_n484,
    new_n485, new_n486, new_n487, new_n488, new_n489, new_n490, new_n491,
    new_n492, new_n493, new_n494, new_n495, new_n496, new_n497, new_n499,
    new_n500, new_n501, new_n502, new_n503, new_n504, new_n505, new_n506,
    new_n507, new_n508, new_n509, new_n510, new_n511, new_n512, new_n513,
    new_n514, new_n515, new_n516, new_n518, new_n519, new_n520, new_n521,
    new_n522, new_n523, new_n524, new_n525, new_n526, new_n527, new_n528,
    new_n529, new_n530, new_n531, new_n532, new_n533, new_n534, new_n535,
    new_n536, new_n537, new_n538, new_n539, new_n540, new_n541, new_n542,
    new_n543, new_n544, new_n545, new_n546, new_n547, new_n548, new_n549,
    new_n550, new_n551, new_n552, new_n553, new_n554, new_n555, new_n556,
    new_n557, new_n558, new_n559, new_n560, new_n561, new_n562, new_n563,
    new_n564, new_n566, new_n567, new_n568, new_n569, new_n570, new_n571,
    new_n572, new_n573, new_n574, new_n575, new_n576, new_n577, new_n578,
    new_n579, new_n581, new_n582, new_n583, new_n584, new_n585, new_n586,
    new_n587, new_n588, new_n589, new_n590, new_n591, new_n592, new_n593,
    new_n594, new_n596, new_n597, new_n598, new_n599, new_n600, new_n601,
    new_n602, new_n603, new_n604, new_n605, new_n606, new_n607, new_n608,
    new_n609, new_n610, new_n611, new_n612, new_n613, new_n614, new_n616,
    new_n617, new_n618, new_n619, new_n620, new_n621, new_n622, new_n623,
    new_n624, new_n625, new_n626, new_n627, new_n628, new_n629, new_n630,
    new_n631;
  assign new_n137 = G29gat & G75gat;
  assign G388gat = G42gat & new_n137;
  assign new_n139 = G29gat & G36gat;
  assign G389gat = G80gat & new_n139;
  assign G390gat = G42gat & new_n139;
  assign new_n142 = G85gat & G86gat;
  assign new_n143 = keyinput5 & new_n142;
  assign new_n144 = ~keyinput6 & new_n143;
  assign new_n145 = keyinput7 & new_n144;
  assign new_n146 = keyinput8 & new_n145;
  assign G391gat = keyinput9 & new_n146;
  assign new_n148 = G1gat & G8gat;
  assign new_n149 = G13gat & new_n148;
  assign G418gat = G17gat & new_n149;
  assign new_n151 = G1gat & G26gat;
  assign new_n152 = G13gat & new_n151;
  assign new_n153 = G17gat & new_n152;
  assign G419gat = G390gat | ~new_n153;
  assign new_n155 = G59gat & G75gat;
  assign G420gat = ~G80gat | ~new_n155;
  assign new_n157 = G36gat & G59gat;
  assign G421gat = ~G80gat | ~new_n157;
  assign G422gat = ~G42gat | ~new_n157;
  assign new_n160 = ~G87gat & G88gat;
  assign new_n161 = keyinput10 & new_n160;
  assign new_n162 = ~keyinput11 & new_n161;
  assign new_n163 = keyinput12 & new_n162;
  assign new_n164 = keyinput13 & new_n163;
  assign new_n165 = ~keyinput14 & new_n164;
  assign new_n166 = G87gat & ~G88gat;
  assign new_n167 = keyinput10 & new_n166;
  assign new_n168 = keyinput11 & new_n167;
  assign new_n169 = keyinput12 & new_n168;
  assign new_n170 = ~keyinput13 & new_n169;
  assign new_n171 = ~keyinput14 & new_n170;
  assign new_n172 = G87gat & G88gat;
  assign new_n173 = keyinput10 & new_n172;
  assign new_n174 = ~keyinput11 & new_n173;
  assign new_n175 = keyinput12 & new_n174;
  assign new_n176 = keyinput13 & new_n175;
  assign new_n177 = keyinput14 & new_n176;
  assign new_n178 = ~new_n165 & ~new_n171;
  assign new_n179 = ~new_n177 & new_n178;
  assign G423gat = G90gat & ~new_n179;
  assign G446gat = ~G390gat | ~new_n153;
  assign G447gat = G51gat & new_n151;
  assign new_n183 = G55gat & new_n149;
  assign new_n184 = ~G29gat & ~G68gat;
  assign new_n185 = keyinput0 & new_n184;
  assign new_n186 = ~keyinput1 & new_n185;
  assign new_n187 = keyinput2 & new_n186;
  assign new_n188 = keyinput3 & new_n187;
  assign new_n189 = keyinput4 & new_n188;
  assign new_n190 = ~G29gat & G68gat;
  assign new_n191 = keyinput0 & new_n190;
  assign new_n192 = ~keyinput1 & new_n191;
  assign new_n193 = keyinput2 & new_n192;
  assign new_n194 = keyinput3 & new_n193;
  assign new_n195 = ~keyinput4 & new_n194;
  assign new_n196 = G29gat & ~G68gat;
  assign new_n197 = keyinput0 & new_n196;
  assign new_n198 = keyinput1 & new_n197;
  assign new_n199 = keyinput2 & new_n198;
  assign new_n200 = ~keyinput3 & new_n199;
  assign new_n201 = ~keyinput4 & new_n200;
  assign new_n202 = ~new_n189 & ~new_n195;
  assign new_n203 = ~new_n201 & new_n202;
  assign G448gat = new_n183 & new_n203;
  assign new_n205 = G59gat & G68gat;
  assign new_n206 = G74gat & new_n205;
  assign G449gat = new_n183 & new_n206;
  assign G450gat = G89gat & ~new_n179;
  assign new_n209 = ~G91gat & ~G96gat;
  assign new_n210 = keyinput15 & new_n209;
  assign new_n211 = ~keyinput16 & new_n210;
  assign new_n212 = keyinput17 & new_n211;
  assign new_n213 = keyinput18 & new_n212;
  assign new_n214 = keyinput19 & new_n213;
  assign new_n215 = ~G91gat & G96gat;
  assign new_n216 = keyinput15 & new_n215;
  assign new_n217 = ~keyinput16 & new_n216;
  assign new_n218 = keyinput17 & new_n217;
  assign new_n219 = keyinput18 & new_n218;
  assign new_n220 = ~keyinput19 & new_n219;
  assign new_n221 = G91gat & ~G96gat;
  assign new_n222 = keyinput15 & new_n221;
  assign new_n223 = keyinput16 & new_n222;
  assign new_n224 = keyinput17 & new_n223;
  assign new_n225 = ~keyinput18 & new_n224;
  assign new_n226 = ~keyinput19 & new_n225;
  assign new_n227 = ~new_n214 & ~new_n220;
  assign new_n228 = ~new_n226 & new_n227;
  assign new_n229 = keyinput20 & new_n215;
  assign new_n230 = ~keyinput21 & new_n229;
  assign new_n231 = keyinput22 & new_n230;
  assign new_n232 = keyinput23 & new_n231;
  assign new_n233 = ~keyinput24 & new_n232;
  assign new_n234 = keyinput20 & new_n221;
  assign new_n235 = keyinput21 & new_n234;
  assign new_n236 = keyinput22 & new_n235;
  assign new_n237 = ~keyinput23 & new_n236;
  assign new_n238 = ~keyinput24 & new_n237;
  assign new_n239 = G91gat & G96gat;
  assign new_n240 = keyinput20 & new_n239;
  assign new_n241 = ~keyinput21 & new_n240;
  assign new_n242 = keyinput22 & new_n241;
  assign new_n243 = keyinput23 & new_n242;
  assign new_n244 = keyinput24 & new_n243;
  assign new_n245 = ~new_n233 & ~new_n238;
  assign new_n246 = ~new_n244 & new_n245;
  assign new_n247 = ~new_n228 & ~new_n246;
  assign new_n248 = ~G101gat & ~G106gat;
  assign new_n249 = keyinput25 & new_n248;
  assign new_n250 = ~keyinput26 & new_n249;
  assign new_n251 = keyinput27 & new_n250;
  assign new_n252 = keyinput28 & new_n251;
  assign new_n253 = keyinput29 & new_n252;
  assign new_n254 = G101gat & ~G106gat;
  assign new_n255 = keyinput25 & new_n254;
  assign new_n256 = ~keyinput26 & new_n255;
  assign new_n257 = keyinput27 & new_n256;
  assign new_n258 = keyinput28 & new_n257;
  assign new_n259 = ~keyinput29 & new_n258;
  assign new_n260 = ~G101gat & G106gat;
  assign new_n261 = keyinput25 & new_n260;
  assign new_n262 = keyinput26 & new_n261;
  assign new_n263 = keyinput27 & new_n262;
  assign new_n264 = ~keyinput28 & new_n263;
  assign new_n265 = ~keyinput29 & new_n264;
  assign new_n266 = ~new_n253 & ~new_n259;
  assign new_n267 = ~new_n265 & new_n266;
  assign new_n268 = keyinput30 & new_n254;
  assign new_n269 = ~keyinput31 & new_n268;
  assign new_n270 = keyinput32 & new_n269;
  assign new_n271 = keyinput33 & new_n270;
  assign new_n272 = ~keyinput34 & new_n271;
  assign new_n273 = keyinput30 & new_n260;
  assign new_n274 = keyinput31 & new_n273;
  assign new_n275 = keyinput32 & new_n274;
  assign new_n276 = ~keyinput33 & new_n275;
  assign new_n277 = ~keyinput34 & new_n276;
  assign new_n278 = G101gat & G106gat;
  assign new_n279 = keyinput30 & new_n278;
  assign new_n280 = ~keyinput31 & new_n279;
  assign new_n281 = keyinput32 & new_n280;
  assign new_n282 = keyinput33 & new_n281;
  assign new_n283 = keyinput34 & new_n282;
  assign new_n284 = ~new_n272 & ~new_n277;
  assign new_n285 = ~new_n283 & new_n284;
  assign new_n286 = ~new_n267 & ~new_n285;
  assign new_n287 = ~new_n247 & ~new_n286;
  assign new_n288 = new_n247 & new_n286;
  assign new_n289 = ~new_n287 & ~new_n288;
  assign new_n290 = G130gat & new_n289;
  assign new_n291 = ~G130gat & ~new_n289;
  assign new_n292 = ~new_n290 & ~new_n291;
  assign new_n293 = ~G111gat & ~G116gat;
  assign new_n294 = keyinput35 & new_n293;
  assign new_n295 = ~keyinput36 & new_n294;
  assign new_n296 = keyinput37 & new_n295;
  assign new_n297 = keyinput38 & new_n296;
  assign new_n298 = keyinput39 & new_n297;
  assign new_n299 = G111gat & ~G116gat;
  assign new_n300 = keyinput35 & new_n299;
  assign new_n301 = ~keyinput36 & new_n300;
  assign new_n302 = keyinput37 & new_n301;
  assign new_n303 = keyinput38 & new_n302;
  assign new_n304 = ~keyinput39 & new_n303;
  assign new_n305 = ~G111gat & G116gat;
  assign new_n306 = keyinput35 & new_n305;
  assign new_n307 = keyinput36 & new_n306;
  assign new_n308 = keyinput37 & new_n307;
  assign new_n309 = ~keyinput38 & new_n308;
  assign new_n310 = ~keyinput39 & new_n309;
  assign new_n311 = ~new_n298 & ~new_n304;
  assign new_n312 = ~new_n310 & new_n311;
  assign new_n313 = keyinput40 & new_n299;
  assign new_n314 = ~keyinput41 & new_n313;
  assign new_n315 = keyinput42 & new_n314;
  assign new_n316 = keyinput43 & new_n315;
  assign new_n317 = ~keyinput44 & new_n316;
  assign new_n318 = keyinput40 & new_n305;
  assign new_n319 = keyinput41 & new_n318;
  assign new_n320 = keyinput42 & new_n319;
  assign new_n321 = ~keyinput43 & new_n320;
  assign new_n322 = ~keyinput44 & new_n321;
  assign new_n323 = G111gat & G116gat;
  assign new_n324 = keyinput40 & new_n323;
  assign new_n325 = ~keyinput41 & new_n324;
  assign new_n326 = keyinput42 & new_n325;
  assign new_n327 = keyinput43 & new_n326;
  assign new_n328 = keyinput44 & new_n327;
  assign new_n329 = ~new_n317 & ~new_n322;
  assign new_n330 = ~new_n328 & new_n329;
  assign new_n331 = ~new_n312 & ~new_n330;
  assign new_n332 = ~G121gat & ~G126gat;
  assign new_n333 = keyinput45 & new_n332;
  assign new_n334 = ~keyinput46 & new_n333;
  assign new_n335 = keyinput47 & new_n334;
  assign new_n336 = keyinput48 & new_n335;
  assign new_n337 = keyinput49 & new_n336;
  assign new_n338 = ~G121gat & G126gat;
  assign new_n339 = keyinput45 & new_n338;
  assign new_n340 = ~keyinput46 & new_n339;
  assign new_n341 = keyinput47 & new_n340;
  assign new_n342 = keyinput48 & new_n341;
  assign new_n343 = ~keyinput49 & new_n342;
  assign new_n344 = G121gat & ~G126gat;
  assign new_n345 = keyinput45 & new_n344;
  assign new_n346 = keyinput46 & new_n345;
  assign new_n347 = keyinput47 & new_n346;
  assign new_n348 = ~keyinput48 & new_n347;
  assign new_n349 = ~keyinput49 & new_n348;
  assign new_n350 = ~new_n337 & ~new_n343;
  assign new_n351 = ~new_n349 & new_n350;
  assign new_n352 = ~new_n332 & ~new_n351;
  assign new_n353 = ~new_n331 & ~new_n352;
  assign new_n354 = new_n331 & new_n352;
  assign new_n355 = ~new_n353 & ~new_n354;
  assign new_n356 = G135gat & new_n355;
  assign new_n357 = ~G135gat & ~new_n355;
  assign new_n358 = ~new_n356 & ~new_n357;
  assign new_n359 = ~new_n292 & ~new_n358;
  assign new_n360 = new_n292 & new_n358;
  assign G767gat = ~new_n359 & ~new_n360;
  assign new_n362 = G159gat & G165gat;
  assign new_n363 = ~G159gat & ~G165gat;
  assign new_n364 = ~new_n362 & ~new_n363;
  assign new_n365 = G171gat & G177gat;
  assign new_n366 = ~G171gat & ~G177gat;
  assign new_n367 = ~new_n365 & ~new_n366;
  assign new_n368 = ~new_n364 & ~new_n367;
  assign new_n369 = new_n364 & new_n367;
  assign new_n370 = ~new_n368 & ~new_n369;
  assign new_n371 = G130gat & new_n370;
  assign new_n372 = ~G130gat & ~new_n370;
  assign new_n373 = ~new_n371 & ~new_n372;
  assign new_n374 = G183gat & G189gat;
  assign new_n375 = ~G183gat & ~G189gat;
  assign new_n376 = ~new_n374 & ~new_n375;
  assign new_n377 = G195gat & G201gat;
  assign new_n378 = ~G195gat & ~G201gat;
  assign new_n379 = ~new_n377 & ~new_n378;
  assign new_n380 = ~new_n376 & ~new_n379;
  assign new_n381 = new_n376 & new_n379;
  assign new_n382 = ~new_n380 & ~new_n381;
  assign new_n383 = G207gat & new_n382;
  assign new_n384 = ~G207gat & ~new_n382;
  assign new_n385 = ~new_n383 & ~new_n384;
  assign new_n386 = ~new_n373 & ~new_n385;
  assign new_n387 = new_n373 & new_n385;
  assign G768gat = ~new_n386 & ~new_n387;
  assign new_n389 = G121gat & G210gat;
  assign new_n390 = G80gat & new_n137;
  assign new_n391 = G447gat & new_n390;
  assign new_n392 = G55gat & new_n391;
  assign new_n393 = ~G268gat & new_n392;
  assign new_n394 = G59gat & G156gat;
  assign new_n395 = G447gat & ~new_n394;
  assign new_n396 = G17gat & new_n395;
  assign new_n397 = G1gat & ~new_n396;
  assign new_n398 = G153gat & ~new_n397;
  assign new_n399 = ~G17gat & ~G42gat;
  assign new_n400 = G17gat & G42gat;
  assign new_n401 = ~new_n399 & ~new_n400;
  assign new_n402 = G59gat & new_n401;
  assign new_n403 = G156gat & new_n402;
  assign new_n404 = G447gat & new_n403;
  assign new_n405 = G51gat & new_n148;
  assign new_n406 = G17gat & new_n405;
  assign new_n407 = G42gat & new_n155;
  assign new_n408 = new_n406 & ~new_n407;
  assign new_n409 = ~new_n404 & ~new_n408;
  assign new_n410 = G126gat & ~new_n409;
  assign new_n411 = ~new_n398 & ~new_n410;
  assign new_n412 = ~new_n393 & new_n411;
  assign new_n413 = ~G201gat & new_n412;
  assign new_n414 = G201gat & ~new_n412;
  assign new_n415 = ~new_n413 & ~new_n414;
  assign new_n416 = ~G261gat & ~new_n415;
  assign new_n417 = G261gat & new_n415;
  assign new_n418 = ~new_n416 & ~new_n417;
  assign new_n419 = G219gat & new_n418;
  assign new_n420 = ~new_n389 & ~new_n419;
  assign new_n421 = G228gat & new_n415;
  assign new_n422 = G237gat & new_n414;
  assign new_n423 = ~new_n421 & ~new_n422;
  assign new_n424 = G255gat & G267gat;
  assign new_n425 = G246gat & ~new_n412;
  assign new_n426 = ~new_n424 & ~new_n425;
  assign new_n427 = G42gat & G59gat;
  assign new_n428 = G68gat & new_n427;
  assign new_n429 = G72gat & new_n428;
  assign new_n430 = new_n183 & new_n429;
  assign new_n431 = G73gat & new_n430;
  assign new_n432 = G201gat & new_n431;
  assign new_n433 = new_n420 & new_n423;
  assign new_n434 = new_n426 & new_n433;
  assign G850gat = new_n432 | ~new_n434;
  assign new_n436 = G106gat & G210gat;
  assign new_n437 = G143gat & ~new_n397;
  assign new_n438 = G111gat & ~new_n409;
  assign new_n439 = ~new_n437 & ~new_n438;
  assign new_n440 = ~new_n393 & new_n439;
  assign new_n441 = ~G183gat & new_n440;
  assign new_n442 = G183gat & ~new_n440;
  assign new_n443 = ~new_n441 & ~new_n442;
  assign new_n444 = G146gat & ~new_n397;
  assign new_n445 = G116gat & ~new_n409;
  assign new_n446 = ~new_n444 & ~new_n445;
  assign new_n447 = ~new_n393 & new_n446;
  assign new_n448 = G189gat & ~new_n447;
  assign new_n449 = ~G189gat & new_n447;
  assign new_n450 = G149gat & ~new_n397;
  assign new_n451 = G121gat & ~new_n409;
  assign new_n452 = ~new_n450 & ~new_n451;
  assign new_n453 = ~new_n393 & new_n452;
  assign new_n454 = G195gat & ~new_n453;
  assign new_n455 = ~new_n449 & new_n454;
  assign new_n456 = ~G195gat & new_n453;
  assign new_n457 = ~new_n449 & ~new_n456;
  assign new_n458 = new_n414 & new_n457;
  assign new_n459 = ~new_n413 & new_n457;
  assign new_n460 = G261gat & new_n459;
  assign new_n461 = ~new_n448 & ~new_n455;
  assign new_n462 = ~new_n458 & new_n461;
  assign new_n463 = ~new_n460 & new_n462;
  assign new_n464 = ~new_n443 & new_n463;
  assign new_n465 = new_n443 & ~new_n463;
  assign new_n466 = ~new_n464 & ~new_n465;
  assign new_n467 = G219gat & new_n466;
  assign new_n468 = ~new_n436 & ~new_n467;
  assign new_n469 = G228gat & new_n443;
  assign new_n470 = G237gat & new_n442;
  assign new_n471 = ~new_n469 & ~new_n470;
  assign new_n472 = G246gat & ~new_n440;
  assign new_n473 = G183gat & new_n431;
  assign new_n474 = ~new_n472 & ~new_n473;
  assign new_n475 = new_n468 & new_n471;
  assign G863gat = ~new_n474 | ~new_n475;
  assign new_n477 = G111gat & G210gat;
  assign new_n478 = ~new_n448 & ~new_n449;
  assign new_n479 = new_n414 & ~new_n456;
  assign new_n480 = ~new_n413 & ~new_n456;
  assign new_n481 = G261gat & new_n480;
  assign new_n482 = ~new_n454 & ~new_n479;
  assign new_n483 = ~new_n481 & new_n482;
  assign new_n484 = ~new_n478 & new_n483;
  assign new_n485 = new_n478 & ~new_n483;
  assign new_n486 = ~new_n484 & ~new_n485;
  assign new_n487 = G219gat & new_n486;
  assign new_n488 = ~new_n477 & ~new_n487;
  assign new_n489 = G228gat & new_n478;
  assign new_n490 = G237gat & new_n448;
  assign new_n491 = ~new_n489 & ~new_n490;
  assign new_n492 = G255gat & G259gat;
  assign new_n493 = G246gat & ~new_n447;
  assign new_n494 = ~new_n492 & ~new_n493;
  assign new_n495 = G189gat & new_n431;
  assign new_n496 = new_n488 & new_n491;
  assign new_n497 = new_n494 & new_n496;
  assign G864gat = new_n495 | ~new_n497;
  assign new_n499 = G116gat & G210gat;
  assign new_n500 = ~new_n454 & ~new_n456;
  assign new_n501 = G261gat & ~new_n413;
  assign new_n502 = ~new_n414 & ~new_n501;
  assign new_n503 = ~new_n500 & new_n502;
  assign new_n504 = new_n500 & ~new_n502;
  assign new_n505 = ~new_n503 & ~new_n504;
  assign new_n506 = G219gat & new_n505;
  assign new_n507 = ~new_n499 & ~new_n506;
  assign new_n508 = G228gat & new_n500;
  assign new_n509 = G237gat & new_n454;
  assign new_n510 = ~new_n508 & ~new_n509;
  assign new_n511 = G255gat & G260gat;
  assign new_n512 = G246gat & ~new_n453;
  assign new_n513 = ~new_n511 & ~new_n512;
  assign new_n514 = G195gat & new_n431;
  assign new_n515 = new_n507 & new_n510;
  assign new_n516 = new_n513 & new_n515;
  assign G865gat = new_n514 | ~new_n516;
  assign new_n518 = G8gat & G138gat;
  assign new_n519 = G91gat & ~new_n409;
  assign new_n520 = ~new_n518 & ~new_n519;
  assign new_n521 = G55gat & new_n395;
  assign new_n522 = G143gat & new_n521;
  assign new_n523 = G17gat & G447gat;
  assign new_n524 = new_n390 & new_n523;
  assign new_n525 = ~G268gat & new_n524;
  assign new_n526 = ~new_n522 & ~new_n525;
  assign new_n527 = new_n520 & new_n526;
  assign new_n528 = G159gat & ~new_n527;
  assign new_n529 = G51gat & G138gat;
  assign new_n530 = G96gat & ~new_n409;
  assign new_n531 = ~new_n529 & ~new_n530;
  assign new_n532 = G146gat & new_n521;
  assign new_n533 = ~new_n525 & ~new_n532;
  assign new_n534 = new_n531 & new_n533;
  assign new_n535 = G165gat & ~new_n534;
  assign new_n536 = ~G165gat & new_n534;
  assign new_n537 = G17gat & G138gat;
  assign new_n538 = G101gat & ~new_n409;
  assign new_n539 = ~new_n537 & ~new_n538;
  assign new_n540 = G149gat & new_n521;
  assign new_n541 = ~new_n525 & ~new_n540;
  assign new_n542 = new_n539 & new_n541;
  assign new_n543 = G171gat & ~new_n542;
  assign new_n544 = ~new_n536 & new_n543;
  assign new_n545 = ~G171gat & new_n542;
  assign new_n546 = G138gat & G152gat;
  assign new_n547 = G106gat & ~new_n409;
  assign new_n548 = ~new_n546 & ~new_n547;
  assign new_n549 = G153gat & new_n521;
  assign new_n550 = ~new_n525 & ~new_n549;
  assign new_n551 = new_n548 & new_n550;
  assign new_n552 = G177gat & ~new_n551;
  assign new_n553 = ~new_n536 & ~new_n545;
  assign new_n554 = new_n552 & new_n553;
  assign new_n555 = ~G177gat & new_n551;
  assign new_n556 = ~new_n441 & ~new_n463;
  assign new_n557 = ~new_n442 & ~new_n556;
  assign new_n558 = new_n553 & ~new_n555;
  assign new_n559 = ~new_n557 & new_n558;
  assign new_n560 = ~new_n535 & ~new_n544;
  assign new_n561 = ~new_n554 & new_n560;
  assign new_n562 = ~new_n559 & new_n561;
  assign new_n563 = ~G159gat & new_n527;
  assign new_n564 = ~new_n562 & ~new_n563;
  assign G866gat = new_n528 | new_n564;
  assign new_n566 = G101gat & G210gat;
  assign new_n567 = ~new_n552 & ~new_n555;
  assign new_n568 = new_n557 & ~new_n567;
  assign new_n569 = ~new_n557 & new_n567;
  assign new_n570 = ~new_n568 & ~new_n569;
  assign new_n571 = G219gat & new_n570;
  assign new_n572 = ~new_n566 & ~new_n571;
  assign new_n573 = G228gat & new_n567;
  assign new_n574 = G237gat & new_n552;
  assign new_n575 = ~new_n573 & ~new_n574;
  assign new_n576 = G246gat & ~new_n551;
  assign new_n577 = G177gat & new_n431;
  assign new_n578 = ~new_n576 & ~new_n577;
  assign new_n579 = new_n572 & new_n575;
  assign G874gat = ~new_n578 | ~new_n579;
  assign new_n581 = G210gat & G268gat;
  assign new_n582 = ~new_n528 & ~new_n563;
  assign new_n583 = new_n562 & ~new_n582;
  assign new_n584 = ~new_n562 & new_n582;
  assign new_n585 = ~new_n583 & ~new_n584;
  assign new_n586 = G219gat & new_n585;
  assign new_n587 = ~new_n581 & ~new_n586;
  assign new_n588 = G228gat & new_n582;
  assign new_n589 = G237gat & new_n528;
  assign new_n590 = ~new_n588 & ~new_n589;
  assign new_n591 = G246gat & ~new_n527;
  assign new_n592 = G159gat & new_n431;
  assign new_n593 = ~new_n591 & ~new_n592;
  assign new_n594 = new_n587 & new_n590;
  assign G878gat = ~new_n593 | ~new_n594;
  assign new_n596 = G91gat & G210gat;
  assign new_n597 = ~new_n535 & ~new_n536;
  assign new_n598 = ~new_n545 & new_n552;
  assign new_n599 = ~new_n545 & ~new_n555;
  assign new_n600 = ~new_n557 & new_n599;
  assign new_n601 = ~new_n543 & ~new_n598;
  assign new_n602 = ~new_n600 & new_n601;
  assign new_n603 = ~new_n597 & new_n602;
  assign new_n604 = new_n597 & ~new_n602;
  assign new_n605 = ~new_n603 & ~new_n604;
  assign new_n606 = G219gat & new_n605;
  assign new_n607 = ~new_n596 & ~new_n606;
  assign new_n608 = G228gat & new_n597;
  assign new_n609 = G237gat & new_n535;
  assign new_n610 = ~new_n608 & ~new_n609;
  assign new_n611 = G246gat & ~new_n534;
  assign new_n612 = G165gat & new_n431;
  assign new_n613 = ~new_n611 & ~new_n612;
  assign new_n614 = new_n607 & new_n610;
  assign G879gat = ~new_n613 | ~new_n614;
  assign new_n616 = G96gat & G210gat;
  assign new_n617 = ~new_n543 & ~new_n545;
  assign new_n618 = ~new_n555 & ~new_n557;
  assign new_n619 = ~new_n552 & ~new_n618;
  assign new_n620 = ~new_n617 & new_n619;
  assign new_n621 = new_n617 & ~new_n619;
  assign new_n622 = ~new_n620 & ~new_n621;
  assign new_n623 = G219gat & new_n622;
  assign new_n624 = ~new_n616 & ~new_n623;
  assign new_n625 = G228gat & new_n617;
  assign new_n626 = G237gat & new_n543;
  assign new_n627 = ~new_n625 & ~new_n626;
  assign new_n628 = G246gat & ~new_n542;
  assign new_n629 = G171gat & new_n431;
  assign new_n630 = ~new_n628 & ~new_n629;
  assign new_n631 = new_n624 & new_n627;
  assign G880gat = ~new_n630 | ~new_n631;
endmodule
