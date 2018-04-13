class Vigenere < ApplicationRecord
  include CharacterMap

  def encode(message, keyword)
    message_length = message.length
    new_keyword = keyword_length(keyword, message_length).downcase.chars
    message = message.chars
    secret = ""
    message.each do |char|
      intersection = character_map.index(char.downcase)
      new_keyword.each do |letter|
        secret << vigenere_grid[letter][intersection]
      end
    end
    secret
  end

  def decode(message, keyword)
  end

  def keyword_length(keyword, message_length)
    left_over = message_length % keyword.length
    until keyword.length > message_length do
      keyword += keyword
    end
    keyword[0..-left_over]
  end

end
