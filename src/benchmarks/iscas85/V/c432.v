// Benchmark "./benchmarks/iscas85/c432" written by ABC on Sun Apr 28 12:32:38 2024

module c432  ( 
    G1gat, G4gat, G8gat, G11gat, G14gat, G17gat, G21gat, G24gat, G27gat,
    G30gat, G34gat, G37gat, G40gat, G43gat, G47gat, G50gat, G53gat, G56gat,
    G60gat, G63gat, G66gat, G69gat, G73gat, G76gat, G79gat, G82gat, G86gat,
    G89gat, G92gat, G95gat, G99gat, G102gat, G105gat, G108gat, G112gat,
    G115gat,
    G223gat, G329gat, G370gat, G421gat, G430gat, G431gat, G432gat  );
  input  G1gat, G4gat, G8gat, G11gat, G14gat, G17gat, G21gat, G24gat,
    G27gat, G30gat, G34gat, G37gat, G40gat, G43gat, G47gat, G50gat, G53gat,
    G56gat, G60gat, G63gat, G66gat, G69gat, G73gat, G76gat, G79gat, G82gat,
    G86gat, G89gat, G92gat, G95gat, G99gat, G102gat, G105gat, G108gat,
    G112gat, G115gat;
  output G223gat, G329gat, G370gat, G421gat, G430gat, G431gat, G432gat;
  wire new_G118gat, new_G119gat, new_G122gat, new_G123gat, new_G126gat,
    new_G127gat, new_G130gat, new_G131gat, new_G134gat, new_G135gat,
    new_G138gat, new_G139gat, new_G142gat, new_G143gat, new_G146gat,
    new_G147gat, new_G150gat, new_G151gat, new_G154gat, new_G157gat,
    new_G158gat, new_G159gat, new_G162gat, new_G165gat, new_G168gat,
    new_G171gat, new_G174gat, new_G177gat, new_G180gat, new_G183gat,
    new_G184gat, new_G185gat, new_G186gat, new_G187gat, new_G188gat,
    new_G189gat, new_G190gat, new_G191gat, new_G192gat, new_G193gat,
    new_G194gat, new_G195gat, new_G196gat, new_G197gat, new_G198gat,
    new_G199gat, new_G203gat, new_G213gat, new_G224gat, new_G227gat,
    new_G230gat, new_G233gat, new_G236gat, new_G239gat, new_G242gat,
    new_G243gat, new_G246gat, new_G247gat, new_G250gat, new_G251gat,
    new_G254gat, new_G255gat, new_G256gat, new_G257gat, new_G258gat,
    new_G259gat, new_G260gat, new_G263gat, new_G264gat, new_G267gat,
    new_G270gat, new_G273gat, new_G276gat, new_G279gat, new_G282gat,
    new_G285gat, new_G288gat, new_G289gat, new_G290gat, new_G291gat,
    new_G292gat, new_G293gat, new_G294gat, new_G295gat, new_G296gat,
    new_G300gat, new_G301gat, new_G302gat, new_G303gat, new_G304gat,
    new_G305gat, new_G306gat, new_G307gat, new_G308gat, new_G309gat,
    new_G319gat, new_G330gat, new_G331gat, new_G332gat, new_G333gat,
    new_G334gat, new_G335gat, new_G336gat, new_G337gat, new_G338gat,
    new_G339gat, new_G340gat, new_G341gat, new_G342gat, new_G343gat,
    new_G344gat, new_G345gat, new_G346gat, new_G347gat, new_G348gat,
    new_G349gat, new_G350gat, new_G351gat, new_G352gat, new_G353gat,
    new_G354gat, new_G355gat, new_G356gat, new_G357gat, new_G360gat,
    new_G371gat, new_G372gat, new_G373gat, new_G374gat, new_G375gat,
    new_G376gat, new_G377gat, new_G378gat, new_G379gat, new_G380gat,
    new_G381gat, new_G386gat, new_G393gat, new_G399gat, new_G404gat,
    new_G407gat, new_G411gat, new_G414gat, new_G415gat, new_G416gat,
    new_G417gat, new_G418gat, new_G419gat, new_G420gat, new_G422gat,
    new_G425gat, new_G428gat, new_G429gat;
  assign new_G118gat = ~G1gat;
  assign new_G119gat = ~G4gat;
  assign new_G122gat = ~G11gat;
  assign new_G123gat = ~G17gat;
  assign new_G126gat = ~G24gat;
  assign new_G127gat = ~G30gat;
  assign new_G130gat = ~G37gat;
  assign new_G131gat = ~G43gat;
  assign new_G134gat = ~G50gat;
  assign new_G135gat = ~G56gat;
  assign new_G138gat = ~G63gat;
  assign new_G139gat = ~G69gat;
  assign new_G142gat = ~G76gat;
  assign new_G143gat = ~G82gat;
  assign new_G146gat = ~G89gat;
  assign new_G147gat = ~G95gat;
  assign new_G150gat = ~G102gat;
  assign new_G151gat = ~G108gat;
  assign new_G154gat = ~new_G118gat | ~G4gat;
  assign new_G157gat = ~G8gat & ~new_G119gat;
  assign new_G158gat = ~G14gat & ~new_G119gat;
  assign new_G159gat = ~new_G122gat | ~G17gat;
  assign new_G162gat = ~new_G126gat | ~G30gat;
  assign new_G165gat = ~new_G130gat | ~G43gat;
  assign new_G168gat = ~new_G134gat | ~G56gat;
  assign new_G171gat = ~new_G138gat | ~G69gat;
  assign new_G174gat = ~new_G142gat | ~G82gat;
  assign new_G177gat = ~new_G146gat | ~G95gat;
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
endmodule
