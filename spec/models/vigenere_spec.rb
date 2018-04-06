require 'rails_helper'

RSpec.describe Vigenere, type: :model do

  it "can be created" do
    v = Vigenere.create

    expect(v).to be_instance_of(Vigenere)
  end

  it 'can encode a simple message' do
    v = Vigenere.create
    secret = v.encode('a', 'b')

    expect(secret).to eq('b')
  end

  it "can encode a simple message with cipher and messge of equal length" do
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

  it "can decode a message from Scary-oke" do
    v = Vigenere.create
    secret = v.decode('SMOFZQA JDFV', "WIDDLE")

    expect(secret).to eq('WELCOME BACK')
  end

  it "can decode a message from Into the Bunker" do
    v = Vigenere.create
    secret = v.decode('OOIY DMEV VN IBWRKAMW BRUWLL', "SHIFTER")

    expect(secret).to eq('WHAT KIND OF DISASTER INDEED')
  end

  it "can decode a message from The Golf War" do
    v = Vigenere.create
    secret = v.decode('NLMXQWWN IIZ LZFNF', "WHATEVS")

    expect(secret).to eq('REMEMBER BIG HENRY')
  end

  it "can decode a message from Sock Opera" do
    v = Vigenere.create
    secret = v.decode('YM’KL ECN PPK WFOM UBR KQVXNLK, DCI SIK’U VDA JFTOTA AYQ BWL VVCT "EBTGGB BHWKGZH" HVV: TMEASZFA LOS YCDT PRWKTIYEKGL DBV XQDTYRDGVI', "CIPHER")

    expect(secret).to eq('WE’VE ALL HAD SOME FUN TONIGHT, BUT LET’S NOT FORGET WHO THE REAL "PUPPET MASTERS" ARE: REPTOIDS WHO HAVE INFILTRATED OUR GOVERNMENT')
  end

  it "can decode a message from Soos and the Real Girl" do
    v = Vigenere.create
    secret = v.decode('BRTYMEMNX QBR HRRQPEE', "BEARO")

    expect(secret).to eq('ANTHYDING CAN HADPLEN')
  end

  it "can decode a message from Little Gift Shop of Horrors" do
    v = Vigenere.create
    secret = v.decode('PVREK BIG QF. JCDQZRF’ ZNVEFH OBCX: "C BEWRS VVUTBFL BT BKNX CVAY BKNX CVAY BKNX"', "NONCANON")

    expect(secret).to eq('CHECK OUT DR. WADDLES’ LATEST BOOK: "A BRIEF HISTORY OF OINK OINK OINK OINK OINK"')
  end

  it "can decode a message from Society of the Blind Eye" do
    v = Vigenere.create
    secret = v.decode('MXNGVEECW MW SLAWW. SUL FPZSK MW SOJMRX.', "ERASE")

    expect(secret).to eq('IGNORANCE IS BLISS. BUT BLISS IS BORING.')
  end

  it "can decode a message from Blendin's Game" do
    v = Vigenere.create
    secret = v.decode("FOC'T FW MVV VIBE EZBAV KF NOW KTB'K FO IHG BBAV VIBE.", "CAPACITOR")

    expect(secret).to eq('DON’T DO THE TIME CRIME IF YOU CAN’T DO THE TIME TIME.')
  end

  it "can decode a message from The Love God" do
    v = Vigenere.create
    secret = v.decode("O SAM KVGS.", "GOATANDAPIG")

    expect(secret).to eq('I EAT KIDS.')
  end

  it "can decode a message from Northwest Mansion Mystery" do
    v = Vigenere.create
    secret = v.decode("PYOL YS QH LLFDJW: UAH DNCVFW ZTCKW XKG WFFWWKNLLMRP? WISAGCXJ AR WKUISW! DPX WDSUKXR: LLH UBFO.", "CURSED")

    expect(secret).to eq('NEXT UP ON UTBAHC: DID ALIENS WRITE THE CONSTITUTION? CRAWDADS IN TIARAS! AND FLORIDA: THE SHOW.')
  end

  it "can decode a message from Not What He Seems" do
    v = Vigenere.create
    secret = v.decode("LAR ZPUHTFTY XWEUPJR GHGZT", "STNLYMBL")

    expect(secret).to eq('THE ORIGINAL MYSTERY TWINS')
  end

  it "can decode a message from A Tale of Two Stans" do
    v = Vigenere.create
    secret = v.decode("TIZOLHAJSIW CKMMWZPMKQ: GLY KJQBH", "SIXER")

    expect(secret).to eq('BACKUPSMORE UNIVERSITY: YOU TRIED')
  end

  it "can decode a message from Dungeons Dungeons and more Dungeons" do
    v = Vigenere.create
    secret = v.decode("VXFQLKB-AYRTHHEJ!", "RADMASTER")

    expect(secret).to eq('EXCELSI-WHATEVER!')
  end


end
