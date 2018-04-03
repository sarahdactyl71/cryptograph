require 'rails_helper'

RSpec.describe Alphanumeric, type: :model do

  it "can be created" do
    a = Alphanumeric.create

    expect(a).to be_instance_of(Alphanumeric)
  end

  it "can encode a simple message" do
    a = Alphanumeric.create
    secret = a.encode("a")

    expect(secret).to eq("1")
  end

  it "can encode a simple message to output numbers with dashes" do
    a = Alphanumeric.create
    secret = a.encode("abc")

    expect(secret).to eq("1-2-3")
  end

  it "can decode a simple secret" do
    a = Alphanumeric.create
    message = a.decode("1")

    expect(message).to eq("a")
  end

  it "can decode a simple secret lower in the character map" do
    a = Alphanumeric.create
    message = a.decode("19")

    expect(message).to eq("s")
  end

  it "can decode - from other special characters" do
    a = Alphanumeric.create
    message = a.decode("1-2-3")

    expect(message).to eq("abc")
  end

  it "excludes special characters" do
    a = Alphanumeric.create
    message = a.encode("!@#$%^&*()_+<>,.?![]/")

    expect(message).to eq("!@#$%^&*()_+<>,.?![]/")
  end

  it "can handle uppercase characters" do
    a = Alphanumeric.create
    message = a.encode("ABC")

    expect(message).to eq("1-2-3")
  end

  #Gravity Falls Ciphers

  it "can decode cryptogram from Bottomless Pit" do
    a = Alphanumeric.create
    message = a.decode("14-5-24-20 21-16: '6-15-15-20-2-15-20 20-23-15: 7-18-21-14-11-12-5'19 7-18-5-22-5-14-7-5.'")

    expect(message).to eq("next up: 'footbot two: grunkles's grevenge.'")
  end

  it "can decode cryptogram from The Deep End" do
    a = Alphanumeric.create
    message = a.decode("22-9-22-1-14 12-15-19 16-1-20-15-19 4-5 12-1 16-9-19-3-9-14-1.")

    expect(message).to eq("vivan los patos de la piscina.")
  end

  xit "can decode cryptogram from Carpet Diem" do
    a = Alphanumeric.create
    message = a.decode("2-21-20 23-8-15 19-20-15-12-5 20-8-5 3-1-16-5-18-19?")

    expect(message).to eq("but who stole the capers?")
  end

  xit "can decode cryptogram from Boyz Crazy" do
    a = Alphanumeric.create
    message = a.decode("8-1-16-16-25 14-15-23, 1-18-9-5-12?")

    expect(message).to eq("happy now ariel?")
  end

  xit "can decode cryptogram from Land Before Swine" do
    a = Alphanumeric.create
    message = a.decode("9-20 23-15-18-11-19 6-15-18 16-9-9-9-9-9-9-9-9-9-9-9-9-9-9-9-9-9-7-19!")

    expect(message).to eq("it works for piiiigs")
  end

  xit "can decode cryptogram from Dreamscapers" do
    a = Alphanumeric.create
    message = a.decode("20-15 2-5 3-15-14-20-9-14-21-5-4...")

    expect(message).to eq("to be continued")
  end

  xit "can decode cryptogram from Gideon Rises" do
    a = Alphanumeric.create
    message = a.decode("18-5-22-5-18-19-5 20-8-5 3-9-16-8-5-18-19")

    expect(message).to eq("reverse the ciphers")
  end

end
