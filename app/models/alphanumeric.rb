class Alphanumeric < ApplicationRecord
  include CharacterMap

  def encode(message)
    message = message.chars
    secret = ""
    message.each.with_index do |character, index|
      character = character.downcase
      if self.character_map.index(character) == nil
        secret << character
      else
        character = self.character_map.index(character).to_i + 1
        character = character.to_s
        if index == message.length - 1
          secret << character
        else
          secret << character + "-"
        end
      end
    end
    secret
  end

  def decode(message)
    message = message.split("-")
    secret = ""
    message.each do |character|
      if character.length <= 2
        character = character.to_i - 1
        letter = self.character_map[character]
        secret << letter
      else
        binding.pry
        piece = character.partition(" ")
        piece.each do |letter|
          character = character.to_i - 1
          letter = self.character_map[character]
          secret << letter
        end
      end
    end
    secret
  end

end
