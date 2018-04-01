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

  it "can decdoe a simple secret" do
    a = Alphanumeric.create
    message = a.decode("1")

    expect(message).to eq("a")
  end

  it "can decode - from other special characters" do
    a = Alphanumeric.create
    message = a.decode("1-2-3")

    expect(message).to eq("abc")
  end

  xit "excludes special characters" do
    a = Alphanumeric.create
    message = a.encode("!@#$%^&*()_+<>,.?![]/")

    expect(message).to eq("!@#$%^&*()_ +<>,.?![]/")
  end

  xit "can handle uppercase characters" do
    a = Alphanumeric.create
    message = a.encode("ABC")

    expect(message).to eq("123")
  end

end
