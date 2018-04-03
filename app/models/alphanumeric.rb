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
        character = character.partition(" ")
        character.each do |char|
          if char == " "
            secret << char
          elsif ("1".."26").include?(char) == false
            process_special_characters(char, secret)
          else
            char = char.to_i - 1
            letter = self.character_map[char]
            secret << letter
          end
        end
      end
    end
    secret
  end

  def process_special_characters(char, secret)
    char = char.split(/(?=[':','?','.','!',',','''])/)
    char.each do |character|
      if character.to_i == 0
        secret << character
      else
        character = character.to_i - 1
        letter = self.character_map[character]
        secret << letter
      end
    end
  end

end
