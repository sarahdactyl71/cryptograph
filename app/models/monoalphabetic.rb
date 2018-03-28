class Monoalphabetic < ApplicationRecord
  include CharacterMap

  def scramble(message, num)
    message = message.chars
    message.map! do |letter|
      alphabet[:letter]
    end
    message
  end

  def decode(message, num)

  end
end

# a.alphabet.index(6)
