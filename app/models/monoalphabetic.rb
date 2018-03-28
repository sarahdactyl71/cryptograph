class Monoalphabetic < ApplicationRecord
  include CharacterMap

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

  def decode(message, offset)

  end
end
