class Vigenere < ApplicationRecord

  def encode(message, keyword)
    message_length = message.length
    new_keyword = keyword_length(keyword, message_length)
    binding.pry
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
