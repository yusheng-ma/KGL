// Benchmark "./benchmarks/iscas85/c880" written by ABC on Sun Apr 28 12:32:40 2024

module c880  ( 
    G1gat, G8gat, G13gat, G17gat, G26gat, G29gat, G36gat, G42gat, G51gat,
    G55gat, G59gat, G68gat, G72gat, G73gat, G74gat, G75gat, G80gat, G85gat,
    G86gat, G87gat, G88gat, G89gat, G90gat, G91gat, G96gat, G101gat,
    G106gat, G111gat, G116gat, G121gat, G126gat, G130gat, G135gat, G138gat,
    G143gat, G146gat, G149gat, G152gat, G153gat, G156gat, G159gat, G165gat,
    G171gat, G177gat, G183gat, G189gat, G195gat, G201gat, G207gat, G210gat,
    G219gat, G228gat, G237gat, G246gat, G255gat, G259gat, G260gat, G261gat,
    G267gat, G268gat,
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
    G261gat, G267gat, G268gat;
  output G388gat, G389gat, G390gat, G391gat, G418gat, G419gat, G420gat,
    G421gat, G422gat, G423gat, G446gat, G447gat, G448gat, G449gat, G450gat,
    G767gat, G768gat, G850gat, G863gat, G864gat, G865gat, G866gat, G874gat,
    G878gat, G879gat, G880gat;
  wire new_G269gat, new_G270gat, new_G273gat, new_G276gat, new_G279gat,
    new_G280gat, new_G284gat, new_G285gat, new_G286gat, new_G287gat,
    new_G290gat, new_G291gat, new_G292gat, new_G293gat, new_G294gat,
    new_G295gat, new_G296gat, new_G297gat, new_G298gat, new_G301gat,
    new_G302gat, new_G303gat, new_G304gat, new_G305gat, new_G306gat,
    new_G307gat, new_G308gat, new_G309gat, new_G310gat, new_G316gat,
    new_G317gat, new_G318gat, new_G319gat, new_G322gat, new_G323gat,
    new_G324gat, new_G325gat, new_G326gat, new_G327gat, new_G328gat,
    new_G329gat, new_G330gat, new_G331gat, new_G332gat, new_G333gat,
    new_G334gat, new_G335gat, new_G336gat, new_G337gat, new_G338gat,
    new_G339gat, new_G340gat, new_G341gat, new_G342gat, new_G343gat,
    new_G344gat, new_G345gat, new_G346gat, new_G347gat, new_G348gat,
    new_G349gat, new_G350gat, new_G351gat, new_G352gat, new_G353gat,
    new_G354gat, new_G355gat, new_G356gat, new_G357gat, new_G360gat,
    new_G363gat, new_G366gat, new_G369gat, new_G375gat, new_G376gat,
    new_G379gat, new_G382gat, new_G385gat, new_G392gat, new_G393gat,
    new_G399gat, new_G400gat, new_G401gat, new_G402gat, new_G403gat,
    new_G404gat, new_G405gat, new_G406gat, new_G407gat, new_G408gat,
    new_G409gat, new_G410gat, new_G411gat, new_G412gat, new_G413gat,
    new_G414gat, new_G415gat, new_G416gat, new_G417gat, new_G424gat,
    new_G425gat, new_G426gat, new_G427gat, new_G432gat, new_G437gat,
    new_G442gat, new_G443gat, new_G444gat, new_G445gat, new_G451gat,
    new_G460gat, new_G463gat, new_G466gat, new_G475gat, new_G476gat,
    new_G477gat, new_G478gat, new_G479gat, new_G480gat, new_G481gat,
    new_G482gat, new_G483gat, new_G488gat, new_G489gat, new_G490gat,
    new_G491gat, new_G492gat, new_G495gat, new_G498gat, new_G499gat,
    new_G500gat, new_G501gat, new_G502gat, new_G503gat, new_G504gat,
    new_G505gat, new_G506gat, new_G507gat, new_G508gat, new_G509gat,
    new_G510gat, new_G511gat, new_G512gat, new_G513gat, new_G514gat,
    new_G515gat, new_G516gat, new_G517gat, new_G518gat, new_G519gat,
    new_G520gat, new_G521gat, new_G522gat, new_G523gat, new_G524gat,
    new_G525gat, new_G526gat, new_G527gat, new_G528gat, new_G529gat,
    new_G530gat, new_G533gat, new_G536gat, new_G537gat, new_G538gat,
    new_G539gat, new_G540gat, new_G541gat, new_G542gat, new_G543gat,
    new_G544gat, new_G547gat, new_G550gat, new_G551gat, new_G552gat,
    new_G553gat, new_G557gat, new_G561gat, new_G565gat, new_G569gat,
    new_G573gat, new_G577gat, new_G581gat, new_G585gat, new_G586gat,
    new_G587gat, new_G588gat, new_G589gat, new_G590gat, new_G593gat,
    new_G596gat, new_G597gat, new_G600gat, new_G605gat, new_G606gat,
    new_G609gat, new_G615gat, new_G616gat, new_G619gat, new_G624gat,
    new_G625gat, new_G628gat, new_G631gat, new_G632gat, new_G635gat,
    new_G640gat, new_G641gat, new_G644gat, new_G650gat, new_G651gat,
    new_G654gat, new_G659gat, new_G660gat, new_G661gat, new_G662gat,
    new_G665gat, new_G669gat, new_G670gat, new_G673gat, new_G677gat,
    new_G678gat, new_G682gat, new_G686gat, new_G687gat, new_G692gat,
    new_G696gat, new_G697gat, new_G700gat, new_G704gat, new_G705gat,
    new_G708gat, new_G712gat, new_G713gat, new_G717gat, new_G721gat,
    new_G722gat, new_G727gat, new_G731gat, new_G732gat, new_G733gat,
    new_G734gat, new_G735gat, new_G736gat, new_G737gat, new_G738gat,
    new_G739gat, new_G740gat, new_G741gat, new_G742gat, new_G743gat,
    new_G744gat, new_G745gat, new_G746gat, new_G747gat, new_G748gat,
    new_G749gat, new_G750gat, new_G751gat, new_G752gat, new_G753gat,
    new_G754gat, new_G755gat, new_G756gat, new_G757gat, new_G758gat,
    new_G759gat, new_G760gat, new_G761gat, new_G762gat, new_G763gat,
    new_G764gat, new_G765gat, new_G766gat, new_G769gat, new_G770gat,
    new_G771gat, new_G772gat, new_G773gat, new_G777gat, new_G778gat,
    new_G781gat, new_G782gat, new_G785gat, new_G786gat, new_G787gat,
    new_G788gat, new_G789gat, new_G790gat, new_G791gat, new_G792gat,
    new_G793gat, new_G794gat, new_G795gat, new_G796gat, new_G802gat,
    new_G803gat, new_G804gat, new_G805gat, new_G806gat, new_G807gat,
    new_G808gat, new_G809gat, new_G810gat, new_G811gat, new_G812gat,
    new_G813gat, new_G814gat, new_G815gat, new_G819gat, new_G822gat,
    new_G825gat, new_G826gat, new_G827gat, new_G828gat, new_G829gat,
    new_G830gat, new_G831gat, new_G832gat, new_G833gat, new_G834gat,
    new_G835gat, new_G836gat, new_G837gat, new_G838gat, new_G839gat,
    new_G840gat, new_G841gat, new_G842gat, new_G843gat, new_G844gat,
    new_G845gat, new_G846gat, new_G847gat, new_G848gat, new_G849gat,
    new_G851gat, new_G852gat, new_G853gat, new_G854gat, new_G855gat,
    new_G856gat, new_G857gat, new_G858gat, new_G859gat, new_G860gat,
    new_G861gat, new_G862gat, new_G867gat, new_G868gat, new_G869gat,
    new_G870gat, new_G871gat, new_G872gat, new_G873gat, new_G875gat,
    new_G876gat, new_G877gat;
  assign new_G269gat = ~G17gat | ~G13gat | ~G1gat | ~G8gat;
  assign new_G270gat = ~G17gat | ~G13gat | ~G1gat | ~G26gat;
  assign new_G273gat = G42gat & G29gat & G36gat;
  assign new_G276gat = G51gat & G1gat & G26gat;
  assign new_G279gat = ~G17gat | ~G51gat | ~G1gat | ~G8gat;
  assign new_G280gat = ~G55gat | ~G13gat | ~G1gat | ~G8gat;
  assign new_G284gat = ~G72gat | ~G68gat | ~G59gat | ~G42gat;
  assign new_G285gat = ~G29gat | ~G68gat;
  assign new_G286gat = ~G74gat | ~G59gat | ~G68gat;
  assign new_G287gat = G80gat & G29gat & G75gat;
  assign new_G290gat = G42gat & G29gat & G75gat;
  assign new_G291gat = G80gat & G29gat & G36gat;
  assign new_G292gat = G42gat & G29gat & G36gat;
  assign new_G293gat = G80gat & G59gat & G75gat;
  assign new_G294gat = G42gat & G59gat & G75gat;
  assign new_G295gat = G80gat & G59gat & G36gat;
  assign new_G296gat = G42gat & G59gat & G36gat;
  assign new_G297gat = G85gat & G86gat;
  assign new_G298gat = G87gat | G88gat;
  assign new_G301gat = ~G91gat | ~G96gat;
  assign new_G302gat = G91gat | G96gat;
  assign new_G303gat = ~G101gat | ~G106gat;
  assign new_G304gat = G101gat | G106gat;
  assign new_G305gat = ~G111gat | ~G116gat;
  assign new_G306gat = G111gat | G116gat;
  assign new_G307gat = ~G121gat | ~G126gat;
  assign new_G308gat = G121gat | G126gat;
  assign new_G309gat = G8gat & G138gat;
  assign new_G310gat = ~G268gat;
  assign new_G316gat = G51gat & G138gat;
  assign new_G317gat = G17gat & G138gat;
  assign new_G318gat = G152gat & G138gat;
  assign new_G319gat = ~G59gat | ~G156gat;
  assign new_G322gat = ~G17gat & ~G42gat;
  assign new_G323gat = G17gat & G42gat;
  assign new_G324gat = ~G159gat | ~G165gat;
  assign new_G325gat = G159gat | G165gat;
  assign new_G326gat = ~G171gat | ~G177gat;
  assign new_G327gat = G171gat | G177gat;
  assign new_G328gat = ~G183gat | ~G189gat;
  assign new_G329gat = G183gat | G189gat;
  assign new_G330gat = ~G195gat | ~G201gat;
  assign new_G331gat = G195gat | G201gat;
  assign new_G332gat = G210gat & G91gat;
  assign new_G333gat = G210gat & G96gat;
  assign new_G334gat = G210gat & G101gat;
  assign new_G335gat = G210gat & G106gat;
  assign new_G336gat = G210gat & G111gat;
  assign new_G337gat = G255gat & G259gat;
  assign new_G338gat = G210gat & G116gat;
  assign new_G339gat = G255gat & G260gat;
  assign new_G340gat = G210gat & G121gat;
  assign new_G341gat = G255gat & G267gat;
  assign new_G342gat = ~new_G269gat;
  assign new_G343gat = ~new_G273gat;
  assign new_G344gat = new_G270gat | new_G273gat;
  assign new_G345gat = ~new_G276gat;
  assign new_G346gat = ~new_G276gat;
  assign new_G347gat = ~new_G279gat;
  assign new_G348gat = ~new_G280gat & ~new_G284gat;
  assign new_G349gat = new_G280gat | new_G285gat;
  assign new_G350gat = new_G280gat | new_G286gat;
  assign new_G351gat = ~new_G293gat;
  assign new_G352gat = ~new_G294gat;
  assign new_G353gat = ~new_G295gat;
  assign new_G354gat = ~new_G296gat;
  assign new_G355gat = ~G89gat | ~new_G298gat;
  assign new_G356gat = G90gat & new_G298gat;
  assign new_G357gat = ~new_G301gat | ~new_G302gat;
  assign new_G360gat = ~new_G303gat | ~new_G304gat;
  assign new_G363gat = ~new_G305gat | ~new_G306gat;
  assign new_G366gat = ~new_G307gat | ~new_G308gat;
  assign new_G369gat = ~new_G310gat;
  assign new_G375gat = ~new_G322gat & ~new_G323gat;
  assign new_G376gat = ~new_G324gat | ~new_G325gat;
  assign new_G379gat = ~new_G326gat | ~new_G327gat;
  assign new_G382gat = ~new_G328gat | ~new_G329gat;
  assign new_G385gat = ~new_G330gat | ~new_G331gat;
  assign G388gat = new_G290gat;
  assign G389gat = new_G291gat;
  assign G390gat = new_G292gat;
  assign G391gat = new_G297gat;
  assign new_G392gat = new_G270gat | new_G343gat;
  assign new_G393gat = ~new_G345gat;
  assign new_G399gat = ~new_G346gat;
  assign new_G400gat = new_G348gat & G73gat;
  assign new_G401gat = ~new_G349gat;
  assign new_G402gat = ~new_G350gat;
  assign new_G403gat = ~new_G355gat;
  assign new_G404gat = ~new_G357gat;
  assign new_G405gat = ~new_G360gat;
  assign new_G406gat = new_G357gat & new_G360gat;
  assign new_G407gat = ~new_G363gat;
  assign new_G408gat = ~new_G366gat;
  assign new_G409gat = new_G363gat & new_G366gat;
  assign new_G410gat = ~new_G347gat | ~new_G352gat;
  assign new_G411gat = ~new_G376gat;
  assign new_G412gat = ~new_G379gat;
  assign new_G413gat = new_G376gat & new_G379gat;
  assign new_G414gat = ~new_G382gat;
  assign new_G415gat = ~new_G385gat;
  assign new_G416gat = new_G382gat & new_G385gat;
  assign new_G417gat = G210gat & new_G369gat;
  assign G418gat = new_G342gat;
  assign G419gat = new_G344gat;
  assign G420gat = new_G351gat;
  assign G421gat = new_G353gat;
  assign G422gat = new_G354gat;
  assign G423gat = new_G356gat;
  assign new_G424gat = ~new_G400gat;
  assign new_G425gat = new_G404gat & new_G405gat;
  assign new_G426gat = new_G407gat & new_G408gat;
  assign new_G427gat = G55gat & new_G319gat & new_G393gat;
  assign new_G432gat = new_G287gat & new_G393gat & G17gat;
  assign new_G437gat = ~G55gat | ~new_G393gat | ~new_G287gat;
  assign new_G442gat = ~new_G393gat | ~G156gat | ~new_G375gat | ~G59gat;
  assign new_G443gat = ~G17gat | ~new_G393gat | ~new_G319gat;
  assign new_G444gat = new_G411gat & new_G412gat;
  assign new_G445gat = new_G414gat & new_G415gat;
  assign G446gat = new_G392gat;
  assign G447gat = new_G399gat;
  assign G448gat = new_G401gat;
  assign G449gat = new_G402gat;
  assign G450gat = new_G403gat;
  assign new_G451gat = ~new_G424gat;
  assign new_G460gat = ~new_G406gat & ~new_G425gat;
  assign new_G463gat = ~new_G409gat & ~new_G426gat;
  assign new_G466gat = ~new_G442gat | ~new_G410gat;
  assign new_G475gat = G143gat & new_G427gat;
  assign new_G476gat = new_G310gat & new_G432gat;
  assign new_G477gat = G146gat & new_G427gat;
  assign new_G478gat = new_G310gat & new_G432gat;
  assign new_G479gat = G149gat & new_G427gat;
  assign new_G480gat = new_G310gat & new_G432gat;
  assign new_G481gat = G153gat & new_G427gat;
  assign new_G482gat = new_G310gat & new_G432gat;
  assign new_G483gat = ~new_G443gat | ~G1gat;
  assign new_G488gat = new_G369gat | new_G437gat;
  assign new_G489gat = new_G369gat | new_G437gat;
  assign new_G490gat = new_G369gat | new_G437gat;
  assign new_G491gat = new_G369gat | new_G437gat;
  assign new_G492gat = ~new_G413gat & ~new_G444gat;
  assign new_G495gat = ~new_G416gat & ~new_G445gat;
  assign new_G498gat = ~G130gat | ~new_G460gat;
  assign new_G499gat = G130gat | new_G460gat;
  assign new_G500gat = ~new_G463gat | ~G135gat;
  assign new_G501gat = new_G463gat | G135gat;
  assign new_G502gat = G91gat & new_G466gat;
  assign new_G503gat = ~new_G475gat & ~new_G476gat;
  assign new_G504gat = G96gat & new_G466gat;
  assign new_G505gat = ~new_G477gat & ~new_G478gat;
  assign new_G506gat = G101gat & new_G466gat;
  assign new_G507gat = ~new_G479gat & ~new_G480gat;
  assign new_G508gat = G106gat & new_G466gat;
  assign new_G509gat = ~new_G481gat & ~new_G482gat;
  assign new_G510gat = G143gat & new_G483gat;
  assign new_G511gat = G111gat & new_G466gat;
  assign new_G512gat = G146gat & new_G483gat;
  assign new_G513gat = G116gat & new_G466gat;
  assign new_G514gat = G149gat & new_G483gat;
  assign new_G515gat = G121gat & new_G466gat;
  assign new_G516gat = G153gat & new_G483gat;
  assign new_G517gat = G126gat & new_G466gat;
  assign new_G518gat = ~G130gat | ~new_G492gat;
  assign new_G519gat = G130gat | new_G492gat;
  assign new_G520gat = ~new_G495gat | ~G207gat;
  assign new_G521gat = new_G495gat | G207gat;
  assign new_G522gat = new_G451gat & G159gat;
  assign new_G523gat = new_G451gat & G165gat;
  assign new_G524gat = new_G451gat & G171gat;
  assign new_G525gat = new_G451gat & G177gat;
  assign new_G526gat = new_G451gat & G183gat;
  assign new_G527gat = ~new_G451gat | ~G189gat;
  assign new_G528gat = ~new_G451gat | ~G195gat;
  assign new_G529gat = ~new_G451gat | ~G201gat;
  assign new_G530gat = ~new_G498gat | ~new_G499gat;
  assign new_G533gat = ~new_G500gat | ~new_G501gat;
  assign new_G536gat = ~new_G309gat & ~new_G502gat;
  assign new_G537gat = ~new_G316gat & ~new_G504gat;
  assign new_G538gat = ~new_G317gat & ~new_G506gat;
  assign new_G539gat = ~new_G318gat & ~new_G508gat;
  assign new_G540gat = ~new_G510gat & ~new_G511gat;
  assign new_G541gat = ~new_G512gat & ~new_G513gat;
  assign new_G542gat = ~new_G514gat & ~new_G515gat;
  assign new_G543gat = ~new_G516gat & ~new_G517gat;
  assign new_G544gat = ~new_G518gat | ~new_G519gat;
  assign new_G547gat = ~new_G520gat | ~new_G521gat;
  assign new_G550gat = ~new_G530gat;
  assign new_G551gat = ~new_G533gat;
  assign new_G552gat = new_G530gat & new_G533gat;
  assign new_G553gat = ~new_G536gat | ~new_G503gat;
  assign new_G557gat = ~new_G537gat | ~new_G505gat;
  assign new_G561gat = ~new_G538gat | ~new_G507gat;
  assign new_G565gat = ~new_G539gat | ~new_G509gat;
  assign new_G569gat = ~new_G488gat | ~new_G540gat;
  assign new_G573gat = ~new_G489gat | ~new_G541gat;
  assign new_G577gat = ~new_G490gat | ~new_G542gat;
  assign new_G581gat = ~new_G491gat | ~new_G543gat;
  assign new_G585gat = ~new_G544gat;
  assign new_G586gat = ~new_G547gat;
  assign new_G587gat = new_G544gat & new_G547gat;
  assign new_G588gat = new_G550gat & new_G551gat;
  assign new_G589gat = new_G585gat & new_G586gat;
  assign new_G590gat = ~new_G553gat | ~G159gat;
  assign new_G593gat = new_G553gat | G159gat;
  assign new_G596gat = G246gat & new_G553gat;
  assign new_G597gat = ~new_G557gat | ~G165gat;
  assign new_G600gat = new_G557gat | G165gat;
  assign new_G605gat = G246gat & new_G557gat;
  assign new_G606gat = ~new_G561gat | ~G171gat;
  assign new_G609gat = new_G561gat | G171gat;
  assign new_G615gat = G246gat & new_G561gat;
  assign new_G616gat = ~new_G565gat | ~G177gat;
  assign new_G619gat = new_G565gat | G177gat;
  assign new_G624gat = G246gat & new_G565gat;
  assign new_G625gat = ~new_G569gat | ~G183gat;
  assign new_G628gat = new_G569gat | G183gat;
  assign new_G631gat = G246gat & new_G569gat;
  assign new_G632gat = ~new_G573gat | ~G189gat;
  assign new_G635gat = new_G573gat | G189gat;
  assign new_G640gat = G246gat & new_G573gat;
  assign new_G641gat = ~new_G577gat | ~G195gat;
  assign new_G644gat = new_G577gat | G195gat;
  assign new_G650gat = G246gat & new_G577gat;
  assign new_G651gat = ~new_G581gat | ~G201gat;
  assign new_G654gat = new_G581gat | G201gat;
  assign new_G659gat = G246gat & new_G581gat;
  assign new_G660gat = ~new_G552gat & ~new_G588gat;
  assign new_G661gat = ~new_G587gat & ~new_G589gat;
  assign new_G662gat = ~new_G590gat;
  assign new_G665gat = new_G593gat & new_G590gat;
  assign new_G669gat = ~new_G596gat & ~new_G522gat;
  assign new_G670gat = ~new_G597gat;
  assign new_G673gat = new_G600gat & new_G597gat;
  assign new_G677gat = ~new_G605gat & ~new_G523gat;
  assign new_G678gat = ~new_G606gat;
  assign new_G682gat = new_G609gat & new_G606gat;
  assign new_G686gat = ~new_G615gat & ~new_G524gat;
  assign new_G687gat = ~new_G616gat;
  assign new_G692gat = new_G619gat & new_G616gat;
  assign new_G696gat = ~new_G624gat & ~new_G525gat;
  assign new_G697gat = ~new_G625gat;
  assign new_G700gat = new_G628gat & new_G625gat;
  assign new_G704gat = ~new_G631gat & ~new_G526gat;
  assign new_G705gat = ~new_G632gat;
  assign new_G708gat = new_G635gat & new_G632gat;
  assign new_G712gat = ~new_G337gat & ~new_G640gat;
  assign new_G713gat = ~new_G641gat;
  assign new_G717gat = new_G644gat & new_G641gat;
  assign new_G721gat = ~new_G339gat & ~new_G650gat;
  assign new_G722gat = ~new_G651gat;
  assign new_G727gat = new_G654gat & new_G651gat;
  assign new_G731gat = ~new_G341gat & ~new_G659gat;
  assign new_G732gat = ~new_G654gat | ~G261gat;
  assign new_G733gat = ~G261gat | ~new_G644gat | ~new_G654gat;
  assign new_G734gat = ~G261gat | ~new_G654gat | ~new_G635gat | ~new_G644gat;
  assign new_G735gat = ~new_G662gat;
  assign new_G736gat = G228gat & new_G665gat;
  assign new_G737gat = G237gat & new_G662gat;
  assign new_G738gat = ~new_G670gat;
  assign new_G739gat = G228gat & new_G673gat;
  assign new_G740gat = G237gat & new_G670gat;
  assign new_G741gat = ~new_G678gat;
  assign new_G742gat = G228gat & new_G682gat;
  assign new_G743gat = G237gat & new_G678gat;
  assign new_G744gat = ~new_G687gat;
  assign new_G745gat = G228gat & new_G692gat;
  assign new_G746gat = G237gat & new_G687gat;
  assign new_G747gat = ~new_G697gat;
  assign new_G748gat = G228gat & new_G700gat;
  assign new_G749gat = G237gat & new_G697gat;
  assign new_G750gat = ~new_G705gat;
  assign new_G751gat = G228gat & new_G708gat;
  assign new_G752gat = G237gat & new_G705gat;
  assign new_G753gat = ~new_G713gat;
  assign new_G754gat = G228gat & new_G717gat;
  assign new_G755gat = G237gat & new_G713gat;
  assign new_G756gat = ~new_G722gat;
  assign new_G757gat = ~new_G727gat & ~G261gat;
  assign new_G758gat = new_G727gat & G261gat;
  assign new_G759gat = G228gat & new_G727gat;
  assign new_G760gat = G237gat & new_G722gat;
  assign new_G761gat = ~new_G644gat | ~new_G722gat;
  assign new_G762gat = ~new_G635gat | ~new_G713gat;
  assign new_G763gat = ~new_G722gat | ~new_G635gat | ~new_G644gat;
  assign new_G764gat = ~new_G609gat | ~new_G687gat;
  assign new_G765gat = ~new_G600gat | ~new_G678gat;
  assign new_G766gat = ~new_G687gat | ~new_G600gat | ~new_G609gat;
  assign G767gat = new_G660gat;
  assign G768gat = new_G661gat;
  assign new_G769gat = ~new_G736gat & ~new_G737gat;
  assign new_G770gat = ~new_G739gat & ~new_G740gat;
  assign new_G771gat = ~new_G742gat & ~new_G743gat;
  assign new_G772gat = ~new_G745gat & ~new_G746gat;
  assign new_G773gat = ~new_G734gat | ~new_G763gat | ~new_G750gat | ~new_G762gat;
  assign new_G777gat = ~new_G748gat & ~new_G749gat;
  assign new_G778gat = ~new_G733gat | ~new_G753gat | ~new_G761gat;
  assign new_G781gat = ~new_G751gat & ~new_G752gat;
  assign new_G782gat = ~new_G756gat | ~new_G732gat;
  assign new_G785gat = ~new_G754gat & ~new_G755gat;
  assign new_G786gat = ~new_G757gat & ~new_G758gat;
  assign new_G787gat = ~new_G759gat & ~new_G760gat;
  assign new_G788gat = ~new_G700gat & ~new_G773gat;
  assign new_G789gat = new_G700gat & new_G773gat;
  assign new_G790gat = ~new_G708gat & ~new_G778gat;
  assign new_G791gat = new_G708gat & new_G778gat;
  assign new_G792gat = ~new_G717gat & ~new_G782gat;
  assign new_G793gat = new_G717gat & new_G782gat;
  assign new_G794gat = G219gat & new_G786gat;
  assign new_G795gat = ~new_G628gat | ~new_G773gat;
  assign new_G796gat = ~new_G795gat | ~new_G747gat;
  assign new_G802gat = ~new_G788gat & ~new_G789gat;
  assign new_G803gat = ~new_G790gat & ~new_G791gat;
  assign new_G804gat = ~new_G792gat & ~new_G793gat;
  assign new_G805gat = ~new_G340gat & ~new_G794gat;
  assign new_G806gat = ~new_G692gat & ~new_G796gat;
  assign new_G807gat = new_G692gat & new_G796gat;
  assign new_G808gat = G219gat & new_G802gat;
  assign new_G809gat = G219gat & new_G803gat;
  assign new_G810gat = G219gat & new_G804gat;
  assign new_G811gat = ~new_G529gat | ~new_G731gat | ~new_G805gat | ~new_G787gat;
  assign new_G812gat = ~new_G619gat | ~new_G796gat;
  assign new_G813gat = ~new_G796gat | ~new_G609gat | ~new_G619gat;
  assign new_G814gat = ~new_G796gat | ~new_G619gat | ~new_G600gat | ~new_G609gat;
  assign new_G815gat = ~new_G814gat | ~new_G766gat | ~new_G738gat | ~new_G765gat;
  assign new_G819gat = ~new_G813gat | ~new_G741gat | ~new_G764gat;
  assign new_G822gat = ~new_G744gat | ~new_G812gat;
  assign new_G825gat = ~new_G806gat & ~new_G807gat;
  assign new_G826gat = ~new_G335gat & ~new_G808gat;
  assign new_G827gat = ~new_G336gat & ~new_G809gat;
  assign new_G828gat = ~new_G338gat & ~new_G810gat;
  assign new_G829gat = ~new_G811gat;
  assign new_G830gat = ~new_G665gat & ~new_G815gat;
  assign new_G831gat = new_G665gat & new_G815gat;
  assign new_G832gat = ~new_G673gat & ~new_G819gat;
  assign new_G833gat = new_G673gat & new_G819gat;
  assign new_G834gat = ~new_G682gat & ~new_G822gat;
  assign new_G835gat = new_G682gat & new_G822gat;
  assign new_G836gat = G219gat & new_G825gat;
  assign new_G837gat = ~new_G704gat | ~new_G826gat | ~new_G777gat;
  assign new_G838gat = ~new_G527gat | ~new_G712gat | ~new_G827gat | ~new_G781gat;
  assign new_G839gat = ~new_G528gat | ~new_G721gat | ~new_G828gat | ~new_G785gat;
  assign new_G840gat = ~new_G829gat;
  assign new_G841gat = ~new_G815gat | ~new_G593gat;
  assign new_G842gat = ~new_G830gat & ~new_G831gat;
  assign new_G843gat = ~new_G832gat & ~new_G833gat;
  assign new_G844gat = ~new_G834gat & ~new_G835gat;
  assign new_G845gat = ~new_G334gat & ~new_G836gat;
  assign new_G846gat = ~new_G837gat;
  assign new_G847gat = ~new_G838gat;
  assign new_G848gat = ~new_G839gat;
  assign new_G849gat = new_G735gat & new_G841gat;
  assign G850gat = new_G840gat;
  assign new_G851gat = G219gat & new_G842gat;
  assign new_G852gat = G219gat & new_G843gat;
  assign new_G853gat = G219gat & new_G844gat;
  assign new_G854gat = ~new_G696gat | ~new_G845gat | ~new_G772gat;
  assign new_G855gat = ~new_G846gat;
  assign new_G856gat = ~new_G847gat;
  assign new_G857gat = ~new_G848gat;
  assign new_G858gat = ~new_G849gat;
  assign new_G859gat = ~new_G417gat & ~new_G851gat;
  assign new_G860gat = ~new_G332gat & ~new_G852gat;
  assign new_G861gat = ~new_G333gat & ~new_G853gat;
  assign new_G862gat = ~new_G854gat;
  assign G863gat = new_G855gat;
  assign G864gat = new_G856gat;
  assign G865gat = new_G857gat;
  assign G866gat = new_G858gat;
  assign new_G867gat = ~new_G669gat | ~new_G859gat | ~new_G769gat;
  assign new_G868gat = ~new_G677gat | ~new_G860gat | ~new_G770gat;
  assign new_G869gat = ~new_G686gat | ~new_G861gat | ~new_G771gat;
  assign new_G870gat = ~new_G862gat;
  assign new_G871gat = ~new_G867gat;
  assign new_G872gat = ~new_G868gat;
  assign new_G873gat = ~new_G869gat;
  assign G874gat = new_G870gat;
  assign new_G875gat = ~new_G871gat;
  assign new_G876gat = ~new_G872gat;
  assign new_G877gat = ~new_G873gat;
  assign G878gat = new_G875gat;
  assign G879gat = new_G876gat;
  assign G880gat = new_G877gat;
endmodule
