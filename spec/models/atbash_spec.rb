require 'rails_helper'

RSpec.describe Atbash, type: :model do

  it "can be created" do
    a = Atbash.create

    expect(a).to be_instance_of(Atbash)
  end

  it "can encode a simple message" do
    a = Atbash.create
    secret = a.encode("abc")

    expect(secret).to eq("zyx")
  end

  it "can decode a simple message" do
    a = Atbash.create
    message = a.encode("zyx")

    expect(message).to eq("abc")
  end

  it "exludes special characters" do
    a = Atbash.create
    secret = a.encode("!@#$%^&*()<>.?")

    expect(secret).to eq("!@#$%^&*()<>.?")
  end

  it "can process uppercase characters" do
    a = Atbash.create
    secret = a.encode("ABC")

    expect(secret).to eq("zyx")
  end

  #gravity falls ciphers

  it "can decode cipher from Double Dipper" do
    a = Atbash.create
    message = a.encode("KZKVI QZN WRKKVI HZBH: 'ZFFTSDCJSTZWHZWFS!'")

    expect(message).to eq("paper jam dipper says: 'auughwxqhgadsaduh!'")
  end

  it "can decode cipher from Irrational Treasure" do
    a = Atbash.create
    message = a.encode("V. KOFIRYFH GIVNYOVB.")

    expect(message).to eq("e. pluribus trembley.")
  end

  it "can decode cipher from The Time Traveler's Pig" do
    a = Atbash.create
    message = a.encode("MLG S.T. DVOOH ZKKILEVW.")

    expect(message).to eq("not h.g. wells approved.")
  end

  it "can decode cipher from Fight Fighters" do
    a = Atbash.create
    message = a.encode("HLIIB, WRKKVI, YFG BLFI DVMWB RH RM ZMLGSVI XZHGOV.")

    expect(message).to eq("sorry, dipper, but your wendy is in another castle.")
  end

  it "can decode cipher from Little Dipper" do
    a = Atbash.create
    message = a.encode("GSV RMERHRYOV DRAZIW RH DZGXSRMT.")

    expect(message).to eq("the invisible wizard is watching.")
  end

  it "can decode cipher from Summerween" do
    a = Atbash.create
    message = a.encode("YILFTSG GL BLF YB SLNVDLIP: GSV XZMWB.")

    expect(message).to eq("brought to you by homework: the candy.")
  end

  it "can decode cipher from Boss Mabel" do
    a = Atbash.create
    message = a.encode("SVZEB RH GSV SVZW GSZG DVZIH GSV UVA.")

    expect(message).to eq("heavy is the head that wears the fez.")
  end

end
