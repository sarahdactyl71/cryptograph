require 'rails_helper'

RSpec.describe Ceaser, type: :model do
   it "can be created" do
     m = Ceaser.create

     expect(m).to be_instance_of(Ceaser)
   end

   it "can scramble a message" do
     m = Ceaser.create
     secret = m.encode("abc", 1)

     expect(secret).to eq("bcd")
   end

   it "can decode a message with known offset" do
     m = Ceaser.create
     message = m.decode("bcd", 1)

     expect(message).to eq("abc")
   end

   it "can skip over a space in an encoded message" do
     m = Ceaser.create
     message = m.encode("ab c", 1)

     expect(message).to eq("bc d")
   end

   it "can skip over a space in a decoded message" do
     m = Ceaser.create
     message = m.decode("bc d", 1)

     expect(message).to eq("ab c")
   end

   it "can scramble a complicated message" do
     m = Ceaser.create
     sentance = "And that my leige is why we know the Earth to be banana shaped."
     message = m.encode(sentance, 1)

     expect(message).to eq("boe uibu nz mfjhf jt xiz xf lopx uif fbsui up cf cbobob tibqfe.")
   end

   it "can skip over special characters" do
     m = Ceaser.create
     sentance = "!@#$%^&*().?,"
     message = m.encode(sentance, 1)

     expect(message).to eq("!@#$%^&*().?,")
   end

   #gravity falls cipher tests

   it "can decode cipher from Themesong" do
     m = Ceaser.create
     message = m.decode("VWDQ LV QRW ZKDW KH VHHPV", 3)

     expect(message).to eq("stan is not what he seems")
   end

   it "can decode cipher from Tourist Trapped" do
     m = Ceaser.create
     message = m.decode("ZHOFRPH WR JUDYLWB IDOOV.", 3)

     expect(message).to eq("welcome to gravity falls.")
   end

   it "can decode cipher from The Legend of the Gobblewonker" do
     m = Ceaser.create
     message = m.decode("QHAW ZHHN: UHWXUQ WR EXWW LVODQG.", 3)

     expect(message).to eq("next week: return to butt island.")
   end

   it "can decode cipher from Headhunters" do
     m = Ceaser.create
     message = m.decode("KH'V VWLOO LQ WKH YHQWV.", 3)

     expect(message).to eq("he's still in the vents.")
   end

   it "can decode cipher from The Hand That Rocks the Mabel" do
     m = Ceaser.create
     message = m.decode("FDUOD, ZKB ZRQ'W BRX FDOO PH?", 3)

     expect(message).to eq("carla, why won't you call me?")
   end

   it "can decode cipher from The Inconveniencing" do
     m = Ceaser.create
     message = m.decode("RQZDUGV DRVKLPD!", 3)

     expect(message).to eq("onwards aoshima!")
   end

   it "can decode cipher from Dipper vs. Manliness" do
     m = Ceaser.create
     message = m.decode("PU. FDHVDULDQ ZLOO EH RXW QHAW ZHHN. PU. DWEDVK ZLOO VXEVWLWXWH.", 3)

     expect(message).to eq("mr. caesarian will be out next week. mr. atbash will substitute.")
   end

   it "can decode cipher from Carpet Diem" do
     m = Ceaser.create
     message = m.decode("SXEHUWB LV WKH JUHDWHVW PBVWHUB RI DOO DOVR: JR RXWVLGH DQG PDNH IULHQGV.", 3)

     expect(message).to eq("puberty is the greatest mystery of all also: go outside and make friends.")
   end

end
