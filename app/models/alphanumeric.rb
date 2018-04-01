class Alphanumeric < ApplicationRecord
  include CharacterMap

  def encode(message)
    message = message.chars
    secret = ""
    message.each.with_index do |character, index|
      character = self.character_map.index(character).to_i + 1
      character = character.to_s
      # binding.pry
      if index == message.length - 1
        secret << character
      else
        secret << character + "-"
      end
    end
    secret
  end

end
