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
    message = message.chars
    secret = ""
    message.each do |character|
      character = character.to_i
      # binding.pry
      if character == '-'
        secret << character
      elsif self.character_map.index(character) == nil && self.integer_check(character) == false
        secret << character
      else
        character = character.to_i - 1
        character = self.character_map[character]
        secret << character
      end
    end
    secret
  end

  def integer_check(character)
    character.is_a? Integer
  end

end
