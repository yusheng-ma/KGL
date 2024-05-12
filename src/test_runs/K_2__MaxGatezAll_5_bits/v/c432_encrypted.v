// Benchmark "./test_runs/K_2__MaxGatezAll_5_bits/c432_encrypted" written by ABC on Sun Apr 28 12:34:53 2024

module c432_encrypted  ( 
    G1gat, G4gat, G8gat, G11gat, G14gat, G17gat, G21gat, G24gat, G27gat,
    G30gat, G34gat, G37gat, G40gat, G43gat, G47gat, G50gat, G53gat, G56gat,
    G60gat, G63gat, G66gat, G69gat, G73gat, G76gat, G79gat, G82gat, G86gat,
    G89gat, G92gat, G95gat, G99gat, G102gat, G105gat, G108gat, G112gat,
    G115gat, keyinput0, keyinput1, keyinput2, keyinput3, keyinput4,
    keyinput5, keyinput6, keyinput7, keyinput8, keyinput9, keyinput10,
    keyinput11, keyinput12, keyinput13, keyinput14, keyinput15, keyinput16,
    keyinput17, keyinput18, keyinput19, keyinput20, keyinput21, keyinput22,
    keyinput23, keyinput24, keyinput25, keyinput26, keyinput27, keyinput28,
    keyinput29, keyinput30, keyinput31, keyinput32, keyinput33, keyinput34,
    keyinput35, keyinput36, keyinput37, keyinput38, keyinput39,
    G223gat, G329gat, G370gat, G421gat, G430gat, G431gat, G432gat  );
  input  G1gat, G4gat, G8gat, G11gat, G14gat, G17gat, G21gat, G24gat,
    G27gat, G30gat, G34gat, G37gat, G40gat, G43gat, G47gat, G50gat, G53gat,
    G56gat, G60gat, G63gat, G66gat, G69gat, G73gat, G76gat, G79gat, G82gat,
    G86gat, G89gat, G92gat, G95gat, G99gat, G102gat, G105gat, G108gat,
    G112gat, G115gat, keyinput0, keyinput1, keyinput2, keyinput3,
    keyinput4, keyinput5, keyinput6, keyinput7, keyinput8, keyinput9,
    keyinput10, keyinput11, keyinput12, keyinput13, keyinput14, keyinput15,
    keyinput16, keyinput17, keyinput18, keyinput19, keyinput20, keyinput21,
    keyinput22, keyinput23, keyinput24, keyinput25, keyinput26, keyinput27,
    keyinput28, keyinput29, keyinput30, keyinput31, keyinput32, keyinput33,
    keyinput34, keyinput35, keyinput36, keyinput37, keyinput38, keyinput39;
  output G223gat, G329gat, G370gat, G421gat, G430gat, G431gat, G432gat;
  wire new_G123gat, new_G127gat, new_G131gat, new_G135gat, new_G139gat,
    new_G143gat, new_G147gat, new_G150gat, new_G151gat, new_G154gat,
    new_G157gat, new_G158gat, new_G159gat, new_G162gat, new_G165gat,
    new_G168gat, new_G171gat, new_G174gat, new_G177gat, new_G180gat,
    new_G183gat, new_G184gat, new_G185gat, new_G186gat, new_G187gat,
    new_G188gat, new_G189gat, new_G190gat, new_G191gat, new_G192gat,
    new_G193gat, new_G194gat, new_G195gat, new_G196gat, new_G197gat,
    new_G198gat, new_G199gat, new_G203gat, new_G213gat, new_G224gat,
    new_G227gat, new_G230gat, new_G233gat, new_G236gat, new_G239gat,
    new_G242gat, new_G243gat, new_G246gat, new_G247gat, new_G250gat,
    new_G251gat, new_G254gat, new_G255gat, new_G256gat, new_G257gat,
    new_G258gat, new_G259gat, new_G260gat, new_G263gat, new_G264gat,
    new_G267gat, new_G270gat, new_G273gat, new_G276gat, new_G279gat,
    new_G282gat, new_G285gat, new_G288gat, new_G289gat, new_G290gat,
    new_G291gat, new_G292gat, new_G293gat, new_G294gat, new_G295gat,
    new_G296gat, new_G300gat, new_G301gat, new_G302gat, new_G303gat,
    new_G304gat, new_G305gat, new_G306gat, new_G307gat, new_G308gat,
    new_G309gat, new_G319gat, new_G330gat, new_G331gat, new_G332gat,
    new_G333gat, new_G334gat, new_G335gat, new_G336gat, new_G337gat,
    new_G338gat, new_G339gat, new_G340gat, new_G341gat, new_G342gat,
    new_G343gat, new_G344gat, new_G345gat, new_G346gat, new_G347gat,
    new_G348gat, new_G349gat, new_G350gat, new_G351gat, new_G352gat,
    new_G353gat, new_G354gat, new_G355gat, new_G356gat, new_G357gat,
    new_G360gat, new_G371gat, new_G372gat, new_G373gat, new_G374gat,
    new_G375gat, new_G376gat, new_G377gat, new_G378gat, new_G379gat,
    new_G380gat, new_G381gat, new_G386gat, new_G393gat, new_G399gat,
    new_G404gat, new_G407gat, new_G411gat, new_G414gat, new_G415gat,
    new_G416gat, new_G417gat, new_G418gat, new_G419gat, new_G420gat,
    new_G422gat, new_G425gat, new_G428gat, new_G429gat, new_not_0,
    new_not_1, new_not_2, new_not_3, new_and_4, new_not_5, new_not_6,
    new_not_7, new_and_8, new_not_9, new_not_10, new_and_11, new_not_13,
    new_not_14, new_not_16, new_not_17, new_not_19, new_not_20, new_not_21,
    new_not_22, new_and_23, new_not_24, new_not_25, new_not_26, new_and_27,
    new_not_28, new_not_29, new_and_30, new_not_32, new_not_33, new_not_34,
    new_not_35, new_and_36, new_not_37, new_not_38, new_not_39, new_and_40,
    new_not_41, new_not_42, new_and_43, new_not_45, new_not_46, new_not_47,
    new_not_48, new_and_49, new_not_50, new_not_51, new_not_52, new_and_53,
    new_not_54, new_not_55, new_and_56, new_not_58, new_not_59, new_not_60,
    new_not_61, new_and_62, new_not_63, new_not_64, new_not_65, new_and_66,
    new_not_67, new_not_68, new_and_69, new_not_71, new_not_72, new_not_73,
    new_not_74, new_and_75, new_not_76, new_not_77, new_not_78, new_and_79,
    new_not_80, new_not_81, new_and_82, new_not_84, new_not_85, new_not_86,
    new_not_87, new_and_88, new_not_89, new_not_90, new_not_91, new_and_92,
    new_not_93, new_not_94, new_and_95, new_not_97, new_not_98, new_not_99,
    new_not_100, new_and_101, new_not_102, new_not_103, new_not_104,
    new_and_105, new_not_106, new_not_107, new_and_108;
  assign new_G123gat = ~G17gat;
  assign new_G127gat = ~G30gat;
  assign new_G131gat = ~G43gat;
  assign new_G135gat = ~G56gat;
  assign new_G139gat = ~G69gat;
  assign new_G143gat = ~G82gat;
  assign new_G147gat = ~G95gat;
  assign new_G150gat = ~G102gat;
  assign new_G151gat = ~G108gat;
  assign new_G154gat = new_and_11 | new_and_4 | new_and_8;
  assign new_G157gat = keyinput7 & new_not_14 & keyinput5 & keyinput4 & G4gat & new_not_13;
  assign new_G158gat = keyinput11 & new_not_17 & keyinput9 & keyinput8 & G4gat & new_not_16;
  assign new_G159gat = new_and_30 | new_and_23 | new_and_27;
  assign new_G162gat = new_and_43 | new_and_36 | new_and_40;
  assign new_G165gat = new_and_56 | new_and_49 | new_and_53;
  assign new_G168gat = new_and_69 | new_and_62 | new_and_66;
  assign new_G171gat = new_and_82 | new_and_75 | new_and_79;
  assign new_G174gat = new_and_95 | new_and_88 | new_and_92;
  assign new_G177gat = new_and_108 | new_and_101 | new_and_105;
  assign new_G180gat = ~new_G150gat | ~G108gat;
  assign new_G183gat = ~G21gat & ~new_G123gat;
  assign new_G184gat = ~G27gat & ~new_G123gat;
  assign new_G185gat = ~G34gat & ~new_G127gat;
  assign new_G186gat = ~G40gat & ~new_G127gat;
  assign new_G187gat = ~G47gat & ~new_G131gat;
  assign new_G188gat = ~G53gat & ~new_G131gat;
  assign new_G189gat = ~G60gat & ~new_G135gat;
  assign new_G190gat = ~G66gat & ~new_G135gat;
  assign new_G191gat = ~G73gat & ~new_G139gat;
  assign new_G192gat = ~G79gat & ~new_G139gat;
  assign new_G193gat = ~G86gat & ~new_G143gat;
  assign new_G194gat = ~G92gat & ~new_G143gat;
  assign new_G195gat = ~G99gat & ~new_G147gat;
  assign new_G196gat = ~G105gat & ~new_G147gat;
  assign new_G197gat = ~G112gat & ~new_G151gat;
  assign new_G198gat = ~G115gat & ~new_G151gat;
  assign new_G199gat = new_G180gat & new_G177gat & new_G174gat & new_G171gat & new_G168gat & new_G165gat & new_G162gat & new_G154gat & new_G159gat;
  assign new_G203gat = ~new_G199gat;
  assign new_G213gat = ~new_G199gat;
  assign G223gat = ~new_G199gat;
  assign new_G224gat = new_G203gat ^ new_G154gat;
  assign new_G227gat = new_G203gat ^ new_G159gat;
  assign new_G230gat = new_G203gat ^ new_G162gat;
  assign new_G233gat = new_G203gat ^ new_G165gat;
  assign new_G236gat = new_G203gat ^ new_G168gat;
  assign new_G239gat = new_G203gat ^ new_G171gat;
  assign new_G242gat = ~G1gat | ~new_G213gat;
  assign new_G243gat = new_G203gat ^ new_G174gat;
  assign new_G246gat = ~new_G213gat | ~G11gat;
  assign new_G247gat = new_G203gat ^ new_G177gat;
  assign new_G250gat = ~new_G213gat | ~G24gat;
  assign new_G251gat = new_G203gat ^ new_G180gat;
  assign new_G254gat = ~new_G213gat | ~G37gat;
  assign new_G255gat = ~new_G213gat | ~G50gat;
  assign new_G256gat = ~new_G213gat | ~G63gat;
  assign new_G257gat = ~new_G213gat | ~G76gat;
  assign new_G258gat = ~new_G213gat | ~G89gat;
  assign new_G259gat = ~new_G213gat | ~G102gat;
  assign new_G260gat = ~new_G224gat | ~new_G157gat;
  assign new_G263gat = ~new_G224gat | ~new_G158gat;
  assign new_G264gat = ~new_G227gat | ~new_G183gat;
  assign new_G267gat = ~new_G230gat | ~new_G185gat;
  assign new_G270gat = ~new_G233gat | ~new_G187gat;
  assign new_G273gat = ~new_G236gat | ~new_G189gat;
  assign new_G276gat = ~new_G239gat | ~new_G191gat;
  assign new_G279gat = ~new_G243gat | ~new_G193gat;
  assign new_G282gat = ~new_G247gat | ~new_G195gat;
  assign new_G285gat = ~new_G251gat | ~new_G197gat;
  assign new_G288gat = ~new_G227gat | ~new_G184gat;
  assign new_G289gat = ~new_G230gat | ~new_G186gat;
  assign new_G290gat = ~new_G233gat | ~new_G188gat;
  assign new_G291gat = ~new_G236gat | ~new_G190gat;
  assign new_G292gat = ~new_G239gat | ~new_G192gat;
  assign new_G293gat = ~new_G243gat | ~new_G194gat;
  assign new_G294gat = ~new_G247gat | ~new_G196gat;
  assign new_G295gat = ~new_G251gat | ~new_G198gat;
  assign new_G296gat = new_G285gat & new_G282gat & new_G279gat & new_G276gat & new_G273gat & new_G270gat & new_G267gat & new_G260gat & new_G264gat;
  assign new_G300gat = ~new_G263gat;
  assign new_G301gat = ~new_G288gat;
  assign new_G302gat = ~new_G289gat;
  assign new_G303gat = ~new_G290gat;
  assign new_G304gat = ~new_G291gat;
  assign new_G305gat = ~new_G292gat;
  assign new_G306gat = ~new_G293gat;
  assign new_G307gat = ~new_G294gat;
  assign new_G308gat = ~new_G295gat;
  assign new_G309gat = ~new_G296gat;
  assign new_G319gat = ~new_G296gat;
  assign G329gat = ~new_G296gat;
  assign new_G330gat = new_G309gat ^ new_G260gat;
  assign new_G331gat = new_G309gat ^ new_G264gat;
  assign new_G332gat = new_G309gat ^ new_G267gat;
  assign new_G333gat = new_G309gat ^ new_G270gat;
  assign new_G334gat = ~G8gat | ~new_G319gat;
  assign new_G335gat = new_G309gat ^ new_G273gat;
  assign new_G336gat = ~new_G319gat | ~G21gat;
  assign new_G337gat = new_G309gat ^ new_G276gat;
  assign new_G338gat = ~new_G319gat | ~G34gat;
  assign new_G339gat = new_G309gat ^ new_G279gat;
  assign new_G340gat = ~new_G319gat | ~G47gat;
  assign new_G341gat = new_G309gat ^ new_G282gat;
  assign new_G342gat = ~new_G319gat | ~G60gat;
  assign new_G343gat = new_G309gat ^ new_G285gat;
  assign new_G344gat = ~new_G319gat | ~G73gat;
  assign new_G345gat = ~new_G319gat | ~G86gat;
  assign new_G346gat = ~new_G319gat | ~G99gat;
  assign new_G347gat = ~new_G319gat | ~G112gat;
  assign new_G348gat = ~new_G330gat | ~new_G300gat;
  assign new_G349gat = ~new_G331gat | ~new_G301gat;
  assign new_G350gat = ~new_G332gat | ~new_G302gat;
  assign new_G351gat = ~new_G333gat | ~new_G303gat;
  assign new_G352gat = ~new_G335gat | ~new_G304gat;
  assign new_G353gat = ~new_G337gat | ~new_G305gat;
  assign new_G354gat = ~new_G339gat | ~new_G306gat;
  assign new_G355gat = ~new_G341gat | ~new_G307gat;
  assign new_G356gat = ~new_G343gat | ~new_G308gat;
  assign new_G357gat = new_G356gat & new_G355gat & new_G354gat & new_G353gat & new_G352gat & new_G351gat & new_G350gat & new_G348gat & new_G349gat;
  assign new_G360gat = ~new_G357gat;
  assign G370gat = ~new_G357gat;
  assign new_G371gat = ~G14gat | ~new_G360gat;
  assign new_G372gat = ~new_G360gat | ~G27gat;
  assign new_G373gat = ~new_G360gat | ~G40gat;
  assign new_G374gat = ~new_G360gat | ~G53gat;
  assign new_G375gat = ~new_G360gat | ~G66gat;
  assign new_G376gat = ~new_G360gat | ~G79gat;
  assign new_G377gat = ~new_G360gat | ~G92gat;
  assign new_G378gat = ~new_G360gat | ~G105gat;
  assign new_G379gat = ~new_G360gat | ~G115gat;
  assign new_G380gat = ~new_G371gat | ~new_G334gat | ~G4gat | ~new_G242gat;
  assign new_G381gat = ~G17gat | ~new_G372gat | ~new_G246gat | ~new_G336gat;
  assign new_G386gat = ~G30gat | ~new_G373gat | ~new_G250gat | ~new_G338gat;
  assign new_G393gat = ~G43gat | ~new_G374gat | ~new_G254gat | ~new_G340gat;
  assign new_G399gat = ~G56gat | ~new_G375gat | ~new_G255gat | ~new_G342gat;
  assign new_G404gat = ~G69gat | ~new_G376gat | ~new_G256gat | ~new_G344gat;
  assign new_G407gat = ~G82gat | ~new_G377gat | ~new_G257gat | ~new_G345gat;
  assign new_G411gat = ~G95gat | ~new_G378gat | ~new_G258gat | ~new_G346gat;
  assign new_G414gat = ~G108gat | ~new_G379gat | ~new_G259gat | ~new_G347gat;
  assign new_G415gat = ~new_G380gat;
  assign new_G416gat = new_G414gat & new_G411gat & new_G407gat & new_G404gat & new_G399gat & new_G393gat & new_G381gat & new_G386gat;
  assign new_G417gat = ~new_G393gat;
  assign new_G418gat = ~new_G404gat;
  assign new_G419gat = ~new_G407gat;
  assign new_G420gat = ~new_G411gat;
  assign G421gat = ~new_G415gat & ~new_G416gat;
  assign new_G422gat = ~new_G386gat | ~new_G417gat;
  assign new_G425gat = ~new_G399gat | ~new_G418gat | ~new_G386gat | ~new_G393gat;
  assign new_G428gat = ~new_G419gat | ~new_G399gat | ~new_G393gat;
  assign new_G429gat = ~new_G420gat | ~new_G407gat | ~new_G386gat | ~new_G393gat;
  assign G430gat = ~new_G399gat | ~new_G422gat | ~new_G381gat | ~new_G386gat;
  assign G431gat = ~new_G428gat | ~new_G425gat | ~new_G381gat | ~new_G386gat;
  assign G432gat = ~new_G429gat | ~new_G425gat | ~new_G381gat | ~new_G422gat;
  assign new_not_0 = ~G1gat;
  assign new_not_1 = ~G4gat;
  assign new_not_2 = ~keyinput0;
  assign new_not_3 = ~keyinput2;
  assign new_and_4 = keyinput3 & new_not_3 & keyinput1 & new_not_2 & new_not_0 & new_not_1;
  assign new_not_5 = ~G4gat;
  assign new_not_6 = ~keyinput0;
  assign new_not_7 = ~keyinput3;
  assign new_and_8 = new_not_7 & keyinput2 & keyinput1 & new_not_6 & G1gat & new_not_5;
  assign new_not_9 = ~keyinput0;
  assign new_not_10 = ~keyinput2;
  assign new_and_11 = keyinput3 & new_not_10 & keyinput1 & new_not_9 & G1gat & G4gat;
  assign new_not_13 = ~G8gat;
  assign new_not_14 = ~keyinput6;
  assign new_not_16 = ~G14gat;
  assign new_not_17 = ~keyinput10;
  assign new_not_19 = ~G11gat;
  assign new_not_20 = ~G17gat;
  assign new_not_21 = ~keyinput12;
  assign new_not_22 = ~keyinput14;
  assign new_and_23 = keyinput15 & new_not_22 & keyinput13 & new_not_21 & new_not_19 & new_not_20;
  assign new_not_24 = ~G17gat;
  assign new_not_25 = ~keyinput12;
  assign new_not_26 = ~keyinput15;
  assign new_and_27 = new_not_26 & keyinput14 & keyinput13 & new_not_25 & G11gat & new_not_24;
  assign new_not_28 = ~keyinput12;
  assign new_not_29 = ~keyinput14;
  assign new_and_30 = keyinput15 & new_not_29 & keyinput13 & new_not_28 & G11gat & G17gat;
  assign new_not_32 = ~G24gat;
  assign new_not_33 = ~G30gat;
  assign new_not_34 = ~keyinput16;
  assign new_not_35 = ~keyinput18;
  assign new_and_36 = keyinput19 & new_not_35 & keyinput17 & new_not_34 & new_not_32 & new_not_33;
  assign new_not_37 = ~G30gat;
  assign new_not_38 = ~keyinput16;
  assign new_not_39 = ~keyinput19;
  assign new_and_40 = new_not_39 & keyinput18 & keyinput17 & new_not_38 & G24gat & new_not_37;
  assign new_not_41 = ~keyinput16;
  assign new_not_42 = ~keyinput18;
  assign new_and_43 = keyinput19 & new_not_42 & keyinput17 & new_not_41 & G24gat & G30gat;
  assign new_not_45 = ~G37gat;
  assign new_not_46 = ~G43gat;
  assign new_not_47 = ~keyinput20;
  assign new_not_48 = ~keyinput22;
  assign new_and_49 = keyinput23 & new_not_48 & keyinput21 & new_not_47 & new_not_45 & new_not_46;
  assign new_not_50 = ~G43gat;
  assign new_not_51 = ~keyinput20;
  assign new_not_52 = ~keyinput23;
  assign new_and_53 = new_not_52 & keyinput22 & keyinput21 & new_not_51 & G37gat & new_not_50;
  assign new_not_54 = ~keyinput20;
  assign new_not_55 = ~keyinput22;
  assign new_and_56 = keyinput23 & new_not_55 & keyinput21 & new_not_54 & G37gat & G43gat;
  assign new_not_58 = ~G50gat;
  assign new_not_59 = ~G56gat;
  assign new_not_60 = ~keyinput24;
  assign new_not_61 = ~keyinput26;
  assign new_and_62 = keyinput27 & new_not_61 & keyinput25 & new_not_60 & new_not_58 & new_not_59;
  assign new_not_63 = ~G56gat;
  assign new_not_64 = ~keyinput24;
  assign new_not_65 = ~keyinput27;
  assign new_and_66 = new_not_65 & keyinput26 & keyinput25 & new_not_64 & G50gat & new_not_63;
  assign new_not_67 = ~keyinput24;
  assign new_not_68 = ~keyinput26;
  assign new_and_69 = keyinput27 & new_not_68 & keyinput25 & new_not_67 & G50gat & G56gat;
  assign new_not_71 = ~G63gat;
  assign new_not_72 = ~G69gat;
  assign new_not_73 = ~keyinput28;
  assign new_not_74 = ~keyinput30;
  assign new_and_75 = keyinput31 & new_not_74 & keyinput29 & new_not_73 & new_not_71 & new_not_72;
  assign new_not_76 = ~G69gat;
  assign new_not_77 = ~keyinput28;
  assign new_not_78 = ~keyinput31;
  assign new_and_79 = new_not_78 & keyinput30 & keyinput29 & new_not_77 & G63gat & new_not_76;
  assign new_not_80 = ~keyinput28;
  assign new_not_81 = ~keyinput30;
  assign new_and_82 = keyinput31 & new_not_81 & keyinput29 & new_not_80 & G63gat & G69gat;
  assign new_not_84 = ~G76gat;
  assign new_not_85 = ~G82gat;
  assign new_not_86 = ~keyinput32;
  assign new_not_87 = ~keyinput34;
  assign new_and_88 = keyinput35 & new_not_87 & keyinput33 & new_not_86 & new_not_84 & new_not_85;
  assign new_not_89 = ~G82gat;
  assign new_not_90 = ~keyinput32;
  assign new_not_91 = ~keyinput35;
  assign new_and_92 = new_not_91 & keyinput34 & keyinput33 & new_not_90 & G76gat & new_not_89;
  assign new_not_93 = ~keyinput32;
  assign new_not_94 = ~keyinput34;
  assign new_and_95 = keyinput35 & new_not_94 & keyinput33 & new_not_93 & G76gat & G82gat;
  assign new_not_97 = ~G89gat;
  assign new_not_98 = ~G95gat;
  assign new_not_99 = ~keyinput36;
  assign new_not_100 = ~keyinput38;
  assign new_and_101 = keyinput39 & new_not_100 & keyinput37 & new_not_99 & new_not_97 & new_not_98;
  assign new_not_102 = ~G95gat;
  assign new_not_103 = ~keyinput36;
  assign new_not_104 = ~keyinput39;
  assign new_and_105 = new_not_104 & keyinput38 & keyinput37 & new_not_103 & G89gat & new_not_102;
  assign new_not_106 = ~keyinput36;
  assign new_not_107 = ~keyinput38;
  assign new_and_108 = keyinput39 & new_not_107 & keyinput37 & new_not_106 & G89gat & G95gat;
endmodule
