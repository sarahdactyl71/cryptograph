class Alphanumeric < ApplicationRecord
  include CharacterMap

  def encode(message)
    message = message.chars
    secret = ""
    message.each.with_index do |character, index|
      character = self.character_map.index(character).to_i + 1
      character = character.to_s
      if index == message.length - 1
        secret << character
      else
        secret << character + "-"
      end
    end
    secret
  end

  def decode(message)
    message = message.chars
    secret = ""
    message.each do |character|
      character = character.to_i - 1
      character = self.character_map[character]
      secret << character
    end
    secret
  end

end
