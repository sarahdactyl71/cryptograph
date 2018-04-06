require 'rails_helper'

RSpec.describe Vigenere, type: :model do

  it "can be created" do
    v = Vigenere.create

    expect(v).to be_instance_of(Vigenere)
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
  
end
