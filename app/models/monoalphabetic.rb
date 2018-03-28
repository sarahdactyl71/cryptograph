class Monoalphabetic < ApplicationRecord
  include CharacterMap

  def encode(message, offset)
    self.scramble(message, offset)
  end

  def decode(message, offset)
    self.scramble(message, -offset)
  end

  def scramble(message, offset)
    message = message.chars
    secret = ""
    message.each do |letter|
      new_index = self.character_map.index(letter) + offset
      letter = self.character_map[new_index]
      secret << letter
    end
    secret
  end

end
