class Vigenere < ApplicationRecord
  include CharacterMap

  def encode(message, keyword)
    message_length = message.length
    new_keyword = keyword_length(keyword, message_length).downcase.chars
    message = message.chars
    secret = ""
    message.zip(new_keyword).each do |char, letter|
      intersection = character_map.index(char.downcase)
      secret << vigenere_grid[letter][intersection].upcase
    end
    secret
  end

  def decode(message, keyword)
  end

  def keyword_length(keyword, message_length)
    left_over = message_length % keyword.length
    if left_over == 0
      keyword
    else
      until keyword.length > message_length do
        keyword += keyword
      end
      keyword[0..-left_over]
    end
  end

end
