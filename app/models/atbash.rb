class Atbash < ApplicationRecord
  include CharacterMap

  def encode(message)
    message = message.chars
    secret = ""
    message.each do |letter|
      letter = letter.downcase
      if self.character_map.index(letter) == nil
        secret << letter
      else
        letter_index = self.character_map.index(letter)
        letter = self.character_map.reverse[letter_index]
        secret << letter
      end
    end
    secret
  end

end
