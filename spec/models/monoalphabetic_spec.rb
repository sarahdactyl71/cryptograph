require 'rails_helper'

RSpec.describe Monoalphabetic, type: :model do
   it "can be created" do
     m = Monoalphabetic.new

     expect(m).to be_instance_of(Monoalphabetic)
   end

   it "can scramble a message" do
     m = Monoalphabetic.new
     secret = m.scramble("abc", 1)

     expect(secret).to eq("bcd")
   end

   it "can decode a message with known offset" do
     m = Monoalphabetic.new
     message = m.decode("bcd", 1)

     expect(message).to eq("abc")
   end

#    it "can scramble a complicated message" do
#      m = Monoalphabetic.new
#      message = "And that my leige is why we know the Earth to be banana shaped."
#      m.scramble(message)
#
#      expect(message).to eq(SOMETHING)
#    end
end
