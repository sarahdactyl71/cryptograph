class Ceaser < ApplicationRecord
  include CharacterMap

  def encode(message, offset)
    message = message.chars
    secret = ""
    message.each do |letter|
      letter = letter.downcase
      if self.character_map.index(letter) == nil
        secret << letter
      else
        new_index = self.character_map.index(letter) + offset
        letter = self.character_map[new_index]
        secret << letter
      end
    end
    secret
  end

  def decode(message, offset)
    self.encode(message, -offset)
  end

end
