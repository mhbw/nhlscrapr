
fix.names.manually <- function (master.list) {
  ##  master.list=roster.collection[[kk]][,c("number","pos","last","first","numfirstlast")]
  
  ## (w), (l), (ot) -- COLIN (JOHN) WHITE, BATES (JON) BATTAGLIA
  ##  print(dim(master.list))
    
    master.list$numfirstlast <- as.character(master.list$numfirstlast)
    
    master.list$first <- gsub("\\([A-z]+\\)", "", master.list$first)
    master.list$first <- gsub("^ *","", master.list$first)
    master.list$first <- gsub(" *$","", master.list$first)
    master.list$last <- gsub("^ *","", master.list$last)
    master.list$last <- gsub(" *$","", master.list$last)
  
  
  ##one name, two players.
    master.list$first[which(master.list$last=="PICARD" & master.list$first=="ALEXANDRE" & master.list$pos == "D")] <- "ALEXANDRE R."
    master.list$first[which(master.list$last=="GREEN" & master.list$first=="MIKE" & master.list$pos == "C")] <- "MICHAEL G."
    master.list$first[which(master.list$last=="KARLSSON" & master.list$first=="ERIK" & master.list$pos != "D")] <- "ERIK 94"
    master.list$first[which(master.list$last=="MILLER" & master.list$first=="ANDREW" & !(master.list$pos %in% c("C","R","RC","CR")))] <- "DREW"  

    ## there is a third Sean Collins (83) who never played in the NHL, but probably had a contract.
    master.list$first[which(master.list$last=="COLLINS" & master.list$first=="SEAN" & master.list$pos == "D")] <- "SEAN P."
    master.list$first[which(master.list$last=="COLLINS" & master.list$first=="SEAN" & master.list$pos != "D")] <- "SEAN B."


    ## one more case: if John Mitchell (1986) ever comes to the NHL, he needs to be included here.
    
    
  ## manual fixes.
  master.list$last[which(master.list$last=="ANDERSSON" & master.list$first=="CRAIG")] <- "ANDERSON"
  master.list$first[which(master.list$last=="ANTROPOV" & master.list$first=="NIKOLAI")] <- "NIK"
  master.list$first[which(master.list$last=="AULD" & master.list$first=="ALEXANDER")] <- "ALEX"
  master.list$first[which(master.list$last=="AXELSSON" & master.list$first=="PER JOHAN")] <- "P.J."

  
  master.list$first[which(master.list$last=="BAILEY" & master.list$first=="JOSHUA")] <- "JOSH"
  master.list$first[which(master.list$last=="BARCH" & master.list$first=="KRYSTOFER")] <- "KRYS"
  master.list$first[which(master.list$last=="BARKER" & master.list$first=="CAMERON")] <- "CAM"
  master.list$first[which(master.list$last=="BERGFORS" & master.list$first=="NICKLAS")] <- "NICLAS"
  
  master.list$numfirstlast[which(master.list$last=="BERNIER" & master.list$first=="JONATHAN")] <- "45 JONATHAN BERNIER"
  
  master.list$first[which(master.list$last=="BLACKBURN" & master.list$first=="DANIEL")] <- "DAN"
  master.list$first[which(master.list$last=="BLAKE" & master.list$first=="ROBERT")] <- "ROB"
  master.list$first[which(master.list$last=="BLUNDEN" & master.list$first=="MICHAEL")] <- "MIKE"
  master.list$first[which(master.list$last=="BOURQUE" & master.list$first=="CHRISTOPHER")] <- "CHRIS"
  master.list$first[which(master.list$last=="BOYNTON" & master.list$first=="NICHOLAS")] <- "NICK"
  master.list$first[which(master.list$last=="BRIERE" & master.list$first=="DANNY")] <- "DANIEL"
  master.list$first[which(master.list$last=="BRYZGALOV" & master.list$first=="ILJA")] <- "ILYA"
  master.list$first[which(master.list$last=="BURROWS" & master.list$first=="ALEXANDRE")] <- "ALEX"
  master.list$first[which(master.list$last=="CAMMALLERI" & master.list$first=="MICHAEL")] <- "MIKE"
  master.list$first[which(master.list$last=="CARCILLO" & master.list$first=="DANIEL")] <- "DAN"
  master.list$first[which(master.list$last=="CARLE" & master.list$first=="MATTHEW")] <- "MATT"
  master.list$first[which(master.list$last=="CLEARY" & master.list$first=="DAN")] <- "DANIEL"
  master.list$first[which(master.list$last=="CLEARY" & master.list$first=="DANNY")] <- "DANIEL"
  master.list$first[which(master.list$last=="CORVO" & master.list$first=="JOSEPH")] <- "JOE"
  master.list$first[which(master.list$last=="CRABB" & master.list$first=="JOSEPH")] <- "JOEY"
  master.list$first[which(master.list$last=="CROMBEEN" & master.list$first=="BJ")] <- "B.J."
  master.list$first[which(master.list$last=="CROMBEEN" & master.list$first=="BRANDON")] <- "B.J."
  master.list$first[which(master.list$last=="DADONOV" & master.list$first=="EVGENII")] <- "EVGENY"
  master.list$first[which(master.list$last=="DADONOV" & master.list$first=="EVGENI")] <- "EVGENY"
  
  master.list$first[which(master.list$last=="DOWD" & master.list$first=="JAMES")] <- "JIM"
  master.list$first[which(master.list$last=="DOWELL" & master.list$first=="JACOB")] <- "JAKE"
  master.list$first[which(master.list$last=="DRAZENOVIC" & master.list$first=="NICHOLAS")] <- "NICK"
  
  master.list$first[which(master.list$last=="DUMBA" & master.list$first=="MATHEW")] <- "MATT"
  
  master.list$first[which(master.list$last=="DUMONT" & master.list$first=="J P")] <- "JEAN-PIERRE"
  master.list$first[which(master.list$last=="DUMONT" & master.list$first=="J-P")] <- "JEAN-PIERRE"
  master.list$first[which(master.list$last=="EARL" & master.list$first=="ROBBIE")] <- "ROBERT"
  
  master.list$first[which(master.list$last=="ENSTROM" & master.list$first=="TOBY")] <- "TOBIAS"  ## 2014-10-19
  
  master.list$first[which(master.list$last=="FERNANDEZ" & master.list$first=="EMMANUEL")] <- "MANNY"
  master.list$first[which(master.list$last=="FROLOV" & master.list$first=="ALEXANDER")] <- "ALEX"


  master.list$first[which(master.list$last=="GAUTHIER" & master.list$first=="DENIS JR.")] <- "DENIS"
  master.list$first[which(master.list$last=="GIGUERE" & master.list$first=="J")] <- "JEAN-SEBASTIEN"
  master.list$first[which(master.list$last=="GIRARDI" & master.list$first=="DAN")] <- "DANIEL"
  master.list$first[which(master.list$last=="GREENE" & master.list$first=="ANDY")] <- "ANDREW"
  master.list$first[which(master.list$last=="GREER" & master.list$first=="MICHAEL")] <- "MIKE"
  master.list$first[which(master.list$last=="GROSSMAN" & master.list$first=="NIKLAS")] <- "NICKLAS"
  master.list$last[which(master.list$last=="GROSSMAN" & master.list$first=="NICKLAS")] <- "GROSSMANN"
  master.list$first[which(master.list$last=="GUENIN" & master.list$first=="NATE")] <- "NATHAN"
  master.list$first[which(master.list$last=="HALKO" & master.list$first=="STEVE")] <- "STEVEN"
  master.list$first[which(master.list$last=="HIGGINS" & master.list$first=="CHRISTOPHER")] <- "CHRIS"
  
  master.list$first[which(master.list$last=="HAVLAT" & master.list$first=="MARTY")] <- "MARTIN"
  
  master.list$first[which(master.list$last=="HERR" & master.list$first=="MATTHEW")] <- "MATT"
  
  
  master.list$last[which(master.list$last=="HILLEN III" & master.list$first=="JOHN")] <- "HILLEN"
  master.list$first[which(master.list$last=="HILLEN" & master.list$first=="JOHN")] <- "JACK"
  master.list$first[which(master.list$last=="HOLIK" & master.list$first=="ROBERT")] <- "BOBBY"
  master.list$first[which(master.list$last=="HOWARD" & master.list$first=="JAMES")] <- "JIMMY"
  
  master.list$first[which(master.list$last=="IRWIN" & master.list$first=="MATTHEW")] <- "MATT"
  master.list$first[which(master.list$last=="JACKMAN" & master.list$first=="RICHARD")] <- "RIC"
  master.list$first[which(master.list$last=="JACQUES" & master.list$first=="J-F")] <- "JEAN-FRANCOIS"
  master.list$first[which(master.list$last=="JOHANSSON" & master.list$first=="MATTIAS")] <- "MATHIAS"
  master.list$first[which(master.list$last=="KALINSKI" & master.list$first=="JONATHON")] <- "JON"
  
  master.list$last[which(master.list$last=="KASTSITSYN")] <- "KOSTITSYN"
  master.list$first[which(master.list$last=="KOSTITSYN" & master.list$first=="SIARHEI")] <- "SERGEI"
  
  master.list$first[which(master.list$last=="KILLORN" & master.list$first=="ALEXANDER")] <- "ALEX"
  master.list$first[which(master.list$last=="KING" & master.list$first=="DWAYNE")] <- "D.J."
  
  master.list$first[which(master.list$last=="KNUBLE" & master.list$first=="MICHAEL")] <- "MIKE"
  master.list$first[which(master.list$last=="KOLANOS" & master.list$first=="KRYSTOFER")] <- "KRYS"
  master.list$first[which(master.list$last=="KOMISAREK" & master.list$first=="MICHAEL")] <- "MIKE"
  master.list$first[which(master.list$last=="KONDRATIEV" & master.list$first=="MAX")] <- "MAXIM"
  master.list$first[which(master.list$last=="KOVALEV" & master.list$first=="ALEXEI")] <- "ALEX"
  master.list$last[which(master.list$last=="KRONVALL")] <- "KRONWALL"
  
  master.list$first[which(master.list$last=="KULEMIN" & master.list$first=="NIKOLAI")] <- "NIKOLAY" ## 2014-10-21
  
  
  master.list$first[which(master.list$last=="LEGACE" & master.list$first=="EMMANUEL")] <- "MANNY"
  master.list$first[which(master.list$last=="LETANG" & master.list$first=="KRISTOPHER")] <- "KRIS"
  
  master.list$first[which(master.list$last=="MACIAS" & master.list$first=="RAYMOND")] <- "RAY"
  
  master.list$first[which(master.list$last=="MACLEAN" & master.list$first=="DONALD")] <- "DON"
  master.list$last[which(master.list$last=="MAGNAN-GRENIER")] <- "MAGNAN"
  master.list$first[which(master.list$last=="MAYOROV" & master.list$first=="MAXIM")] <- "MAKSIM"
  master.list$first[which(master.list$last=="MCCOLLUM" & master.list$first=="TOM")] <- "THOMAS"
  master.list$first[which(master.list$last=="MCGILLIS" & master.list$first=="DAN")] <- "DANIEL"
  master.list$last[which(master.list$last=="MEYER IV")] <- "MEYER"
  master.list$first[which(master.list$last=="MEYER" & master.list$first=="FREDDY")] <- "FREDERICK"

    
    
  master.list$first[which(master.list$last=="MILLER" & master.list$first=="JONATHAN")] <- "J.T."

    
  master.list$first[which(master.list$last=="MILLS" & master.list$first=="BRADLEY")] <- "BRAD"
  
  master.list$first[which(master.list$last=="MODANO" & master.list$first=="MICHAEL")] <- "MIKE"
  master.list$first[which(master.list$last=="MODIN" & master.list$first=="FREDDY")] <- "FREDRIK"
  master.list$first[which(master.list$last=="NEIL" & master.list$first=="CHRISTOPHER")] <- "CHRIS"
  
  master.list$first[which(master.list$last=="NIETO" & master.list$first=="MATTHEW")] <- "MATT"
  
  master.list$first[which(master.list$last=="ODUYA" & master.list$first=="DAVID JOHNNY")] <- "JOHNNY"
  master.list$first[which(master.list$last=="ODUYA" & master.list$first=="JOHN")] <- "JOHNNY"
  master.list$last[which(master.list$last=="ORTMYER" & master.list$first=="JED")] <- "ORTMEYER"
  master.list$first[which(master.list$last=="OVECHKIN" & master.list$first=="ALEXANDER")] <- "ALEX"
  
  master.list$first[which(master.list$last=="PARENTEAU" & master.list$first=="PIERRE")] <- "P.A."
  master.list$first[which(master.list$last=="PARENTEAU" & master.list$first=="PIERRE-ALEXANDRE")] <- "P.A."
  master.list$first[which(master.list$last=="PARENTEAU" & master.list$first=="PA")] <- "P.A."
  master.list$first[which(master.list$last=="PELLEY" & master.list$first=="RODNEY")] <- "ROD"
  master.list$first[which(master.list$last=="PEVERLEY" & master.list$first=="JOHN")] <- "RICH"
  
  master.list$first[which(master.list$last=="POULIOT" & master.list$first=="MARC")] <- "MARC-ANTOINE"
  
  master.list$first[which(master.list$last=="PROSPAL" & master.list$first=="VINNY")] <- "VACLAV"
  master.list$first[which(master.list$last=="PURCELL" & master.list$first=="EDWARD")] <- "TEDDY"
  
  master.list$last[which(master.list$last=="PUSHKAREV" & master.list$first=="KONSTANTIN")] <- "PUSHKARYOV"
  
  master.list$first[which(master.list$last=="REINHART" & master.list$first=="MAXWELL")] <- "MAX"
  
  
  master.list$first[which(master.list$last=="REINPRECHT" & master.list$first=="STEVE")] <- "STEVEN"
  master.list$first[which(master.list$last=="RISSMILLER" & master.list$first=="PAT")] <- "PATRICK"
  master.list$first[which(master.list$last=="RUPP" & master.list$first=="MICHAEL")] <- "MIKE"
  master.list$first[which(master.list$last=="SANTORELLI" & master.list$first=="MICHAEL")] <- "MIKE"
  master.list$first[which(master.list$last=="SCUDERI" & master.list$first=="ROBERT")] <- "ROB"
  
  master.list$first[which(master.list$last=="SESTITO" & master.list$first=="TOMMY")] <- "TOM"
  master.list$last[which(master.list$last=="SHISKANOV" & master.list$first=="TIMOFEI")] <- "SHISHKANOV"
  master.list$first[which(master.list$last=="SILLINGER" & master.list$first=="MICHAEL")] <- "MIKE"
  
  master.list$first[which(master.list$last=="SIM" & master.list$first=="JON")] <- "JONATHAN"
  master.list$first[which(master.list$last=="SIMON" & master.list$first=="BEN")] <- "BENJAMIN"
  master.list$first[which(master.list$last=="STAJAN" & master.list$first=="MATTHEW")] <- "MATT"
  
  master.list$first[which(master.list$last=="STEEN" & master.list$first=="ALEXANDER")] <- "ALEX"
  master.list$last[which(master.list$last=="ST LOUIS" & master.list$first=="MARTIN")] <- "ST. LOUIS"
  master.list$first[which(master.list$last=="STORTINI" & master.list$first=="ZACHERY")] <- "ZACK"
  master.list$last[which(master.list$last=="ST PIERRE" & master.list$first=="MARTIN")] <- "ST. PIERRE"
  master.list$last[which(master.list$last=="STREBAK" & master.list$first=="MARTIN")] <- "STRBAK"
  
  master.list$first[which(master.list$last=="TAYLOR" & master.list$first=="TIMOTHY")] <- "TIM"

    master.list$first[which(master.list$last=="TAYLOR" & master.list$first=="DANNY")] <- "DANIEL"
  

    master.list$first[which(master.list$last=="THOMAS" & master.list$first=="TIMOTHY JR.")] <- "TIM"
    master.list$first[which(master.list$last=="THOMAS" & master.list$first=="WILLIAM")] <- "BILL"
 

    
    
  
  master.list$first[which(master.list$last=="VALICEVIC" & master.list$first=="ROBERT")] <- "ROB"
  master.list$first[which(master.list$last=="VALIQUETTE" & master.list$first=="STEVE")] <- "STEPHEN"
  master.list$first[which(master.list$last=="VANDERMEER" & master.list$first=="JAMES")] <- "JIM"
  master.list$first[which(master.list$last=="VARLAMOV" & master.list$first=="SIMEON")] <- "SEMYON"
  master.list$last[which(master.list$last=="VANDE VELDE" & master.list$first=="CHRIS")] <- "VANDEVELDE"
  
  ##master.list$first[which(master.list$last=="WHITE" & master.list$first=="COLIN (JOHN)")] <- "COLIN"
  
  
  master.list$first[which(master.list$last=="WOZNIEWSKI" & master.list$first=="ANDREW")] <- "ANDY"
  master.list$first[which(master.list$last=="WYMAN" & master.list$first %in% c("JT","JAMES"))] <- "J.T."

    
  
  master.list$first[which(master.list$last=="YORK" & master.list$first=="MICHAEL")] <- "MIKE"
  master.list$first[which(master.list$last=="ZHERDEV" & master.list$first=="NIKOLAY")] <- "NIKOLAI"
  master.list$first[which(master.list$last=="ZOLNIERCZYK" & master.list$first=="HARRISON")] <- "HARRY"
  


  ## These ones courtesy of the reserve list.
  master.list$first[which(master.list$last=="AGOSTINO" & master.list$first=="KENNETH")] <- "KENNY"
  master.list$last[which(master.list$last=="ALMQVIST" & master.list$first=="ADAM")] <- "ALMQUIST"
  master.list$first[which(master.list$last=="ANGELIDIS" & master.list$first=="MICHAEL")] <- "MIKE"
  master.list$first[which(master.list$last=="BARTKOWSKI" & master.list$first=="MATTHEW")] <- "MATT"
  master.list$first[which(master.list$last=="DEKEYSER" & master.list$first=="DANIEL")] <- "DANNY"

  master.list$first[which(master.list$last=="DESJARDINS" & master.list$first=="CEDRIC")] <- "CEDRICK"
  master.list$last[which(master.list$last=="ERIKSSON" & master.list$first=="JONATHAN")] <- "ERICSSON"
  master.list$first[which(master.list$last=="FRASER" & master.list$first=="MATTHEW")] <- "MATT"
  master.list$first[which(master.list$last=="GAUDREAU" & master.list$first=="JOHN")] <- "JOHNNY"
  master.list$first[which(master.list$last=="GLENDENING" & master.list$first=="LUCAS")] <- "LUKE"

  master.list$last[which(master.list$last=="GUSTAFSSON" & master.list$first=="JONAS")] <- "GUSTAVSSON"
  master.list$first[which(master.list$last=="HACKETT" & master.list$first=="MATTHEW")] <- "MATT"


  master.list$first[which(master.list$last=="KLINKHAMMER" & master.list$first=="ROBERT")] <- "ROB"
  master.list$first[which(master.list$last=="MARCHENKO" & master.list$first=="ALEXEI")] <- "ALEXEY"
  master.list$first[which(master.list$last=="OLEKSIAK" & master.list$first=="JAMIESON")] <- "JAMIE"

  master.list$last[which(master.list$last=="PAAJARVI-SVENSSON" & master.list$first=="MAGNUS")] <- "PAAJARVI"
  master.list$last[which(master.list$last=="PECHURSKIY" & master.list$first=="ALEXANDER")] <- "PECHURSKI"

  master.list$first[which(master.list$last=="PETROVIC" & master.list$first=="ALEXANDER")] <- "ALEX"
  master.list$first[which(master.list$last=="RICHARDS" & master.list$first=="MICHAEL")] <- "MIKE"
  master.list$first[which(master.list$last=="SISLO" & master.list$first=="MICHAEL")] <- "MIKE"
  
  master.list$last[which(master.list$last=="ST. DENIS" & master.list$first=="FREDERIC")] <- "ST-DENIS"
  master.list$first[which(master.list$last=="TALBOT" & master.list$first=="CAMERON")] <- "CAM"

  master.list$first[which(master.list$last=="VASILEVSKIY" & master.list$first=="ANDREY")] <- "ANDREI"

  master.list$first[which(master.list$last=="WAGNER" & master.list$first=="CHRISTOPHER")] <- "CHRIS"
  master.list$first[which(master.list$last=="VOYNOV" & master.list$first=="VIATCHESLAV")] <- "SLAVA"
  master.list$first[which(master.list$last=="VOYNOV" & master.list$first=="VYATCHESLAV")] <- "SLAVA"

  master.list$first[which(master.list$last=="WILSON" & master.list$first=="THOMAS")] <- "TOM"
  master.list$last[which(master.list$last=="ZUCCARELLO AASEN" & master.list$first=="MATS")] <- "ZUCCARELLO"


    ## TSN?
  master.list$first[which(master.list$last=="ALEXANDROV" & master.list$first=="VICTOR")] <- "VIKTOR"
  master.list$first[which(master.list$last=="ANDERSON" & master.list$first=="J.P.")] <- "JON-PAUL"
  master.list$first[which(master.list$last=="ANDRONOV" & master.list$first=="SERGEY")] <- "SERGEI"
  master.list$first[which(master.list$last=="ATKINSON" & master.list$first=="CAMERON")] <- "CAM"
  master.list$first[which(master.list$last=="BAILLARGEON" & master.list$first=="ROBBIE")] <- "ROBERT"
  master.list$first[which(master.list$last=="BEATTIE" & master.list$first=="MATT")] <- "MATTHEW"
  master.list$first[which(master.list$last=="BENNETT" & master.list$first=="SAMUEL")] <- "SAM"

    master.list$first[which(master.list$last=="BODIE" & master.list$first=="MAT")] <- "MATHEW"

    master.list$first[which(master.list$last=="BOYD" & master.list$first=="RONALD (R.J.)")] <- "R.J."
    master.list$first[which(master.list$last=="BROADHURST" & master.list$first=="ALEXANDER")] <- "ALEX"
    master.list$first[which(master.list$last=="BURMISTROV" & master.list$first=="ALEXANDER")] <- "ALEX"
    master.list$first[which(master.list$last=="CALLAHAN" & master.list$first=="MITCH")] <- "MITCHELL"
    master.list$first[which(master.list$last=="CALVERT" & master.list$first=="MATT")] <- "MATTHEW"
    master.list$first[which(master.list$last=="CANNONE" & master.list$first=="PAT")] <- "PATRICK"
    master.list$first[which(master.list$last=="CARRUTH" & master.list$first=="MAC")] <- "MACMILLIAN"
    master.list$first[which(master.list$last=="CHERNYKH" & master.list$first=="DIMITRI")] <- "DMITRI"
    master.list$first[which(master.list$last=="CLAPPERTON" & master.list$first=="CHRIS")] <- "CHRISTOPHER"
    master.list$first[which(master.list$last=="CLARK" & master.list$first=="MAT")] <- "MATHEW"
    master.list$first[which(master.list$last=="CLUNE" & master.list$first=="RICHARD")] <- "RICH"



    
    master.list$first[which(master.list$last=="CONDON" & master.list$first=="NATE")] <- "NATHAN"
    master.list$first[which(master.list$last=="CORRENTE" & master.list$first=="MATT")] <- "MATTHEW"
    master.list$first[which(master.list$last=="CRANE" & master.list$first=="CHRIS")] <- "CHRISTOPHER"
    master.list$first[which(master.list$last=="CRUS RYDBERG" & master.list$first=="VICTOR")] <- "VIKTOR"
    master.list$first[which(master.list$last=="D'AGOSTINO" & master.list$first=="NICK")] <- "NICHOLAS"

    master.list$first[which(master.list$last=="DEBLOUW" & master.list$first=="MATT")] <- "MATTHEW"
    master.list$first[which(master.list$last=="DIABY" & master.list$first=="JONATHAN")] <- "JONATHAN-ISMAEL"
    master.list$first[which(master.list$last=="DI GIUSEPPE" & master.list$first=="PHIL")] <- "PHILLIP"
    master.list$first[which(master.list$last=="DZIURZYNSKI" & master.list$first=="DAVE")] <- "DAVID"

    master.list$first[which(master.list$last=="EMELIN" & master.list$first=="ALEKSEY")] <- "ALEXEI"
    master.list$first[which(master.list$last=="FABBRI" & master.list$first=="ROBERT")] <- "ROBBY"
    master.list$first[which(master.list$last=="FEJES" & master.list$first=="HUNTER")] <- "SAMUEL"
    master.list$first[which(master.list$last=="GUINDON" & master.list$first=="LOUIS-PHILIPPE")] <- "LOUIS-PHILIP"
    master.list$first[which(master.list$last=="GUINDON" & master.list$first=="LOUIS-PHILIPE")] <- "LOUIS-PHILIP"
    master.list$last[which(master.list$last=="JANMARK" & master.list$first=="MATTIAS")] <- "JANMARK-NYLEN"

    master.list$first[which(master.list$last=="KABLUKOV" & master.list$first=="ILJA")] <- "ILYA"
    master.list$first[which(master.list$last=="KHOKHLACHEV" & master.list$first=="ALEX")] <- "ALEXANDER"

    master.list$first[which(master.list$last=="KOLTSOV" & master.list$first=="KIRIL")] <- "KIRILL"
    master.list$first[which(master.list$last=="KOSTENKO" & master.list$first=="SERGEY")] <- "SERGEI"
    master.list$first[which(master.list$last=="KRIKUNOV" & master.list$first=="ILIA")] <- "ILYA"
    master.list$first[which(master.list$last=="KURKER" & master.list$first=="SAM")] <- "SAMUEL"
    master.list$first[which(master.list$last=="LAGACE" & master.list$first=="MAX")] <- "MAXIME"


    master.list$first[which(master.list$last=="LANE" & master.list$first=="PHIL")] <- "PHILIP"
    master.list$first[which(master.list$last=="LARSON" & master.list$first=="NICK")] <- "NICHOLAS"
    master.list$first[which(master.list$last=="LEE" & master.list$first=="MIKE")] <- "MICHAEL"
    master.list$first[which(master.list$last=="LUUKKO" & master.list$first=="NICK")] <- "NICHOLAS"
    master.list$first[which(master.list$last=="MAGYAR" & master.list$first=="NICK")] <- "NICHOLAS"
    master.list$first[which(master.list$last=="MARTIN" & master.list$first=="MATT")] <- "MATTHEW"
    master.list$first[which(master.list$last=="MATHESON" & master.list$first=="MIKE")] <- "MICHAEL"
    master.list$first[which(master.list$last=="MCFADDEN" & master.list$first=="JOSH")] <- "JOSHUA"
    master.list$first[which(master.list$last=="MERRILL" & master.list$first=="JONATHON")] <- "JON"
    master.list$first[which(master.list$last=="MILAN" & master.list$first=="DAN")] <- "DANIEL"
    master.list$first[which(master.list$last=="MISHARIN" & master.list$first=="GEORGY")] <- "GRIGORY"
    master.list$first[which(master.list$last=="MORROW" & master.list$first=="JOSEPH")] <- "JOE"
    master.list$first[which(master.list$last=="MURPHY" & master.list$first=="MATT")] <- "MATTHEW"
    master.list$first[which(master.list$last=="MURRAY" & master.list$first=="MATT")] <- "MATTHEW"
    master.list$first[which(master.list$last=="NIEVES" & master.list$first=="BOO")] <- "CRISTOVAL"

    master.list$first[which(master.list$last=="OLKINUORA" & master.list$first=="JUSSI")] <- "JUHO"
    master.list$last[which(master.list$last=="OLKIUORA" & master.list$first=="JUHO")] <- "OLKINUORA"
    master.list$first[which(master.list$last=="O'REGAN" & master.list$first=="DANNY")] <- "DANIEL"

    master.list$first[which(master.list$last=="PALMER" & master.list$first=="JOE")] <- "JOSEPH"
    master.list$first[which(master.list$last=="PARAYKO" & master.list$first=="COLTEN")] <- "COLTON"
    master.list$first[which(master.list$last=="PASHNIN" & master.list$first=="MIHAIL")] <- "MIKHAIL"
    master.list$first[which(master.list$last=="POCHIRO" & master.list$first=="ZACH")] <- "ZACHARY"

    master.list$first[which(master.list$last=="RITCHIE" & master.list$first=="NICK")] <- "NICHOLAS"
    master.list$first[which(master.list$last=="ROACH" & master.list$first=="ALEX")] <- "ALEXANDER"
    master.list$first[which(master.list$last=="ROSS" & master.list$first=="BRAD")] <- "BRADLEY"

    master.list$first[which(master.list$last=="ROY" & master.list$first=="MARCO")] <- "MARC-OLIVIER"
    master.list$first[which(master.list$last=="SANFORD" & master.list$first=="ZACH")] <- "ZACHARY"
    master.list$first[which(master.list$last=="SANTINI" & master.list$first=="STEVE")] <- "STEVEN"
    master.list$first[which(master.list$last=="SAUER" & master.list$first=="MIKE")] <- "MICHAEL"
    master.list$first[which(master.list$last=="SCHALLER" & master.list$first=="TIM")] <- "TIMOTHY"

    master.list$first[which(master.list$last=="SHORE" & master.list$first=="NICK")] <- "NICHOLAS"
    master.list$first[which(master.list$last=="SKACHKOV" & master.list$first=="EVGENY")] <- "EVGENI"
    master.list$first[which(master.list$last=="STECKEL" & master.list$first=="DAVE")] <- "DAVID"
    master.list$first[which(master.list$last=="SWEATT" & master.list$first=="BILL")] <- "WILLIAM"

    master.list$first[which(master.list$last=="TALBOT" & master.list$first=="MAXIME")] <- "MAX"
    master.list$first[which(master.list$last=="TANEV" & master.list$first=="CHRIS")] <- "CHRISTOPHER"
    
    master.list$last[which(master.list$last=="VASILYEV" & master.list$first=="VALERI")] <- "VASILIEV"
    
    master.list$first[which(master.list$last=="VERNACE" & master.list$first=="MIKE")] <- "MICHAEL"
    master.list$first[which(master.list$last=="WALTERS" & master.list$first=="NICK")] <- "NICHOLAS"
    master.list$first[which(master.list$last=="WATSON" & master.list$first=="CLIFF")] <- "CLIFFORD"

    master.list$first[which(master.list$last=="WHEATON" & master.list$first=="MITCH")] <- "MITCHELL"

    master.list$first[which(master.list$last=="WITTCHOW" & master.list$first=="EDDIE")] <- "EDWARD"
    master.list$first[which(master.list$last=="YAKIMOWICZ" & master.list$first=="CHANDLER")] <- "C.J."
    master.list$first[which(master.list$last=="ZALEWSKI" & master.list$first=="STEVE")] <- "STEVEN"
    master.list$first[which(master.list$last=="ZIGOMANIS" & master.list$first=="MICHAEL")] <- "MIKE"


    
    master.list$first[which(master.list$last=="BURAVCHIKOV" & master.list$first=="VIATCHESLAV")] <- "VYATCHESLAV"
    master.list$first[which(master.list$last=="BURAVCHIKOV" & master.list$first=="VYACHESLAV")] <- "VYATCHESLAV"

    master.list$first[which(master.list$last=="BROWN" & master.list$first=="")] <- ""


    ## new stuff, 2015-05-06
    master.list$first[which(master.list$last=="FERLAND" & master.list$first=="MICHAEL")] <- "MICHEAL"
    master.list$first[which(master.list$last=="MURRAY" & master.list$first=="DOUG")] <- "DOUGLAS"

    master.list$first[which(master.list$last=="DIMITRAKOS" & master.list$first=="NICHOLAS")] <- "NIKO"
    master.list$first[which(master.list$last=="HAMILTON" & master.list$first=="JEFFREY")] <- "JEFF"
    master.list$first[which(master.list$last=="PIHLMAN" & master.list$first=="THOMAS")] <- "TUOMAS"
    master.list$first[which(master.list$last=="WALL" & master.list$first=="MICHAEL")] <- "MIKE"
    master.list$first[which(master.list$last=="MCVICAR" & master.list$first=="ROB")] <- "ROBERT"
    master.list$first[which(master.list$last=="KOLESNIK" & master.list$first=="VITALIY")] <- "VITALY"
    master.list$first[which(master.list$last=="TATICEK" & master.list$first=="PETR")] <- "PETER"
    master.list$first[which(master.list$last=="BROOKS" & master.list$first=="ALEXANDER")] <- "ALEX"
    master.list$first[which(master.list$last=="VANDERMEER" & master.list$first=="PETE")] <- "PETER"
    master.list$first[which(master.list$last=="MINARD" & master.list$first=="CHRISTOPHER")] <- "CHRIS"
    master.list$first[which(master.list$last=="MCKEE" & master.list$first=="DAVID")] <- "DAVE"
    master.list$first[which(master.list$last=="HENNESSY" & master.list$first=="JOSHUA")] <- "JOSH"
    master.list$first[which(master.list$last=="HUNT" & master.list$first=="JAMESON")] <- "JAMIE"
    master.list$first[which(master.list$last=="GRIER" & master.list$first=="MICHAEL")] <- "MIKE"
    master.list$first[which(master.list$last=="ZUBOV" & master.list$first=="ILJA")] <- "ILYA"
    master.list$first[which(master.list$last=="FOUCAULT" & master.list$first=="KRISTOPHER")] <- "KRIS"
    master.list$first[which(master.list$last=="PENNER" & master.list$first=="JEFFREY")] <- "JEFF"

    
    master.list$last[which(master.list$last=="DROUIN-DESLAURIERS" & master.list$first=="JEFF")] <- "DESLAURIERS"

    master.list$first[which(master.list$last=="LODGE" & master.list$first=="JIMMY")] <- "JAMES"

    
    master.list$first[which(master.list$last=="TALLAS" & master.list$first=="ROBB")] <- "ROBBIE"
    master.list$first[which(master.list$last=="FITZGERALD" & master.list$first=="ZACH")] <- "ZACK"
    master.list$first[which(master.list$last=="FRITZ" & master.list$first=="MITCH")] <- "MITCHELL"
    
    master.list$last[which(master.list$last=="NORDQVIST" & master.list$first=="JONAS")] <- "NORDQUIST"
    master.list$first[which(master.list$last=="ONDRUS" & master.list$first=="BENJAMIN")] <- "BEN"


    
    ## initialed names.
    master.list$first[grep("^P\\.? *J\\.? *",master.list$first)] <- "P.J."
    master.list$first[grep("^T\\.? *J\\.? *",master.list$first)] <- "T.J."
    master.list$first[which(master.list$first=="TJ")] <- "T.J."
    master.list$first[which(master.list$first=="DJ")] <- "D.J."
    master.list$first[which(master.list$first=="PK")] <- "P.K."
    master.list$first[which(master.list$first=="RJ")] <- "R.J."



    ## 2015-2016
    master.list$first[which(master.list$last=="MEDVEDEV" & master.list$first=="EVGENY")] <- "YEVGENI"



    
 ##   print(dim(master.list))
  
  master.list <- master.list[order(master.list$last,
                                   master.list$first),]
  #master.list$numfirstlast <- with(master.list, paste(num, first, last))
 ##   print(dim(master.list))
  
  
  return(master.list)
}




## x="ST. LOUIS"
.simpleCap <- function(x, ch=" ", ch2=ch) {
    split1 <- strsplit(x, "[A-z]")[[1]]; split1 <- split1[nchar(split1) > 0]
    s2 <- strsplit(x, "[ '\\.-]")[[1]]
    m1 <- rbind(toupper(substring(s2, 1, 1)),
                tolower(substring(s2, 2)),
                c(split1, "")[1:length(s2)])
    paste(c(m1[!is.na(m1)]), collapse="")
}

manual.patches <- function (roster.thisone) {
  #roster.thisone <- data.frame(last=c("ST. LOUIS", "VAN RIEMSDYK", "GREEN"), first=c("MARTIN", "JAMES", "MICHAEL G."), stringsAsFactors=FALSE)
    
  roster.thisone$first <- sapply(roster.thisone$first, .simpleCap)
  roster.thisone$last <- sapply(roster.thisone$last, .simpleCap)
  
  substr(roster.thisone$last[grep("^Mac", roster.thisone$last)], 4,4) <-
    toupper(substr(roster.thisone$last[grep("^Mac", roster.thisone$last)], 4,4))
  substr(roster.thisone$last[grep("^Mc", roster.thisone$last)], 3,3) <-
    toupper(substr(roster.thisone$last[grep("^Mc", roster.thisone$last)], 3,3))
  roster.thisone$last <- gsub("^Van ", "van ", roster.thisone$last)
  roster.thisone$firstlast <- paste(roster.thisone$first, roster.thisone$last)
  return(roster.thisone)
  
}

