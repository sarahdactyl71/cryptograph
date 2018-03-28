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
    message = a.decode("zyx")

    expect(secret).to eq("abc")
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

end
