require 'rails_helper'

RSpec.describe Vigenere, type: :model do

  it "can be created" do
    v = Vigenere.create

    expect(v).to be_instance_of(Vigenere)
  end

  xit 'can encode a simple message' do
    v = Vigenere.create
    secret = v.encode('a', 'b')

    expect(secret).to eq('b')
  end

  xit "can encode a simple message with cipher and messge of equal length" do
    v = Vigenere.create
    secret = v.encode('sarah', 'emily')

    expect(secret).to eq('WMZLF')
  end

  it "can encode a message without spaces" do
    v = Vigenere.create
    secret = v.encode('MABELEATSSPRINKLES', "GRAVITY")

    expect(secret).to eq('SRBZTXYZJSKZBLQCEN')
  end

  #gravity falls ciphers

  xit "can decode a message from Scary-oke" do
    v = Vigenere.create
    secret = v.decode('SMOFZQA JDFV', "WIDDLE")

    expect(secret).to eq('WELCOME BACK')
  end

  xit "can decode a message from Into the Bunker" do
    v = Vigenere.create
    secret = v.decode('OOIY DMEV VN IBWRKAMW BRUWLL', "SHIFTER")

    expect(secret).to eq('WHAT KIND OF DISASTER INDEED')
  end

  xit "can decode a message from The Golf War" do
    v = Vigenere.create
    secret = v.decode('NLMXQWWN IIZ LZFNF', "WHATEVS")

    expect(secret).to eq('REMEMBER BIG HENRY')
  end

  xit "can decode a message from Sock Opera" do
    v = Vigenere.create
    secret = v.decode('YM’KL ECN PPK WFOM UBR KQVXNLK, DCI SIK’U VDA JFTOTA AYQ BWL VVCT "EBTGGB BHWKGZH" HVV: TMEASZFA LOS YCDT PRWKTIYEKGL DBV XQDTYRDGVI', "CIPHER")

    expect(secret).to eq('WE’VE ALL HAD SOME FUN TONIGHT, BUT LET’S NOT FORGET WHO THE REAL "PUPPET MASTERS" ARE: REPTOIDS WHO HAVE INFILTRATED OUR GOVERNMENT')
  end

  xit "can decode a message from Soos and the Real Girl" do
    v = Vigenere.create
    secret = v.decode('BRTYMEMNX QBR HRRQPEE', "BEARO")

    expect(secret).to eq('ANTHYDING CAN HADPLEN')
  end

  xit "can decode a message from Little Gift Shop of Horrors" do
    v = Vigenere.create
    secret = v.decode('PVREK BIG QF. JCDQZRF’ ZNVEFH OBCX: "C BEWRS VVUTBFL BT BKNX CVAY BKNX CVAY BKNX"', "NONCANON")

    expect(secret).to eq('CHECK OUT DR. WADDLES’ LATEST BOOK: "A BRIEF HISTORY OF OINK OINK OINK OINK OINK"')
  end

  xit "can decode a message from Society of the Blind Eye" do
    v = Vigenere.create
    secret = v.decode('MXNGVEECW MW SLAWW. SUL FPZSK MW SOJMRX.', "ERASE")

    expect(secret).to eq('IGNORANCE IS BLISS. BUT BLISS IS BORING.')
  end

  xit "can decode a message from Blendin's Game" do
    v = Vigenere.create
    secret = v.decode("FOC'T FW MVV VIBE EZBAV KF NOW KTB'K FO IHG BBAV VIBE.", "CAPACITOR")

    expect(secret).to eq('DON’T DO THE TIME CRIME IF YOU CAN’T DO THE TIME TIME.')
  end

  xit "can decode a message from The Love God" do
    v = Vigenere.create
    secret = v.decode("O SAM KVGS.", "GOATANDAPIG")

    expect(secret).to eq('I EAT KIDS.')
  end

  xit "can decode a message from Northwest Mansion Mystery" do
    v = Vigenere.create
    secret = v.decode("PYOL YS QH LLFDJW: UAH DNCVFW ZTCKW XKG WFFWWKNLLMRP? WISAGCXJ AR WKUISW! DPX WDSUKXR: LLH UBFO.", "CURSED")

    expect(secret).to eq('NEXT UP ON UTBAHC: DID ALIENS WRITE THE CONSTITUTION? CRAWDADS IN TIARAS! AND FLORIDA: THE SHOW.')
  end

  xit "can decode a message from Not What He Seems" do
    v = Vigenere.create
    secret = v.decode("LAR ZPUHTFTY XWEUPJR GHGZT", "STNLYMBL")

    expect(secret).to eq('THE ORIGINAL MYSTERY TWINS')
  end

  xit "can decode a message from A Tale of Two Stans" do
    v = Vigenere.create
    secret = v.decode("TIZOLHAJSIW CKMMWZPMKQ: GLY KJQBH", "SIXER")

    expect(secret).to eq('BACKUPSMORE UNIVERSITY: YOU TRIED')
  end

  xit "can decode a message from Dungeons Dungeons and more Dungeons" do
    v = Vigenere.create
    secret = v.decode("VXFQLKB-AYRTHHEJ!", "RADMASTER")

    expect(secret).to eq('EXCELSI-WHATEVER!')
  end

  xit "can decode a message from The Stanchurian Candidate" do
    v = Vigenere.create
    secret = v.decode("CWZSQVQBEWZSQVQBEWZSQVQMPHKD 'MZ!", "WORKINIT")

    expect(secret).to eq("GIIIIIIIIIIIIIIIIIIIIIITTTTT 'EM!")
  end

  xit "can decode a message from The Last Mabelcorn" do
    v = Vigenere.create
    secret = v.decode("S UPYTYH DIP GAVO QETHI MCBK OHK XEXJB VRW YOUWCHIA VRSV OQ LRDIA", "SCHMENDRICK")

    expect(secret).to eq("A SIMPLE MAN WITH EAGER EARS MAY TRUST THE WHISPERS THAT HE HEARS")
  end

  xit "can decode a message from Roadside Attraction" do
    v = Vigenere.create
    secret = v.decode("VCDH, PZNS P CSSOS VDPUHB GTXILSKTV, VYSCIYROZN USLQR WXW NDM WDQVZOGS, EEG PTUVZHBSTH R WOAZMEJ PJAPURU PCH JDGHN GRW OADRX WVT LEP", "DOPPER")

    expect(secret).to eq("SOOS, LIKE A NOBLE GOLDEN RETRIEVER, EVENTUALLY FOUND HIS WAY HOMEWARD, AND BEFRIENDED A TALKING BULLDOG AND SASSY CAT ALONG THE WAY")
  end

  xit "can decode a message from Dipper and Mabel vs. the Future" do
    #this keyword might need no space
    v = Vigenere.create
    secret = v.decode("ETX CPI ASTD GI?", "BLUE BOOK")

    expect(secret).to eq("DID YOU MISS ME?")
  end

  xit "can decode a message from Weirdmageddon Part 1" do
    v = Vigenere.create
    secret = v.decode("KB HTMT IHOV 1,000 AMLCT NDY XZOM MLCG'H TSCGKFWFA IV VVEWYDUQIBXV, CVO HIMC OI'J DINV, IM'H NSZPO EZ CM KLVP EZLYLG", "CILLBIPHER")

    expect(secret).to eq("IT WILL TAKE 1,000 YEARS FOR TIME BABY'S MOLECULES TO RECONSTITUTE, AND WHEN HE'S BACK, HE'S GOING TO BE VERY CRANKY.")
  end

  xit "can decode a message from Weirdmageddon 2: Escape From Reality" do
    v = Vigenere.create
    secret = v.decode("FZPO YSU BQSHZ LTLY FR LV UCC IFJ CIYHO LTEYWKQWUW II P KFASJ JKQASPJE'W LLOMKXQNFR FLWEDGI", "DIPPYFRESH")

    expect(secret).to eq("CRAZ AND XYLER WENT ON TO RUN THE LEGAL DEPARTMENT AT A MAJOR CHILDREN'S TELEVISION NETWORK")
  end

  xit "can decode a message from Weirdmageddon 3: Take Back The Fallsy" do
    v = Vigenere.create
    secret = v.decode("KVOU VTKSE XVREOW DQTMJKGD MF KNLJH CVE 900 YCHJZ OH XXFB PJPSKC FVQUSIOV LHP: FRNLLCDBFBF", "SHACKTRON")

    expect(secret).to eq("SOOS LATER FORCED MCGUCKET TO WATCH ALL 900 HOURS OF NEON CRISIS MECHABOT BOY: REVELATIONS")
  end

  xit "can decode a message from Weirdmageddon 4: Somewhere in The Woods" do
    v = Vigenere.create
    secret = v.decode("ZMFUIGV PSHP IGK AGTAYAG TRMNE VVGSQW KLE JOJXU GIMWZ", "HIDDEN DEEP WITHIN THE WOODS A BURIED TREASURE WAITS")

    expect(secret).to eq("SECRETS LOST AND STATUES FOUND BEYOND THE RUSTY GATES")
  end


end
