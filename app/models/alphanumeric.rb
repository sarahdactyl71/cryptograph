class Alphanumeric < ApplicationRecord
  include CharacterMap

  def encode(message)
    message = message.chars
    secret = ""
    message.each do |letter|
      letter = self.character_map.index(letter).to_i + 1
      secret << letter
    end
    secret
  end

end
