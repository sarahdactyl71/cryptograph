class Vigenere < ApplicationRecord
  include CharacterMap

  def encode(message, keyword)
    message_length = message.length
    new_keyword = keyword_length(keyword, message_length).downcase.chars
    message = message.chars
    secret = ""
    message.each do |char|
      intersection = character_map.index(char)
      # new_keyword.each do |letter|
      #   char = char.downcase
      #   secret << vigenere_grid[letter][intersection].upcase
      # end
      find_secret_letter(char, intersection, new_keyword, secret)
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

  def find_secret_letter(char, intersection, new_keyword, secret)
    new_keyword.each do |letter|
      char = char.downcase
      secret << vigenere_grid[letter][intersection].upcase
    end
  end

end
