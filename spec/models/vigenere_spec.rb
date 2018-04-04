require 'rails_helper'

RSpec.describe Vigenere, type: :model do

  it "can be created" do
    v = Vigenere.create

    expect(v).to be_instance_of(Vigenere)
  end

  
end
