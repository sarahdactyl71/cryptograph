class Alphanumeric < ApplicationRecord
  include CharacterMap

  def encode(message)
    message = message.chars
    secret = ""
    message.each do |character|
      character = self.character_map.index(character).to_i + 1
      character = character.to_s
      secret << character + "-"
    end
    secret
  end

end
