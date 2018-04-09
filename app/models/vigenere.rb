class Vigenere < ApplicationRecord

  def encode(message, keyword)
    message_length = message.length
    new_keyword = keyword_length(keyword, message_length)
  end

  def decode(message, keyword)
  end

  def keyword_length(keyword, message_length)
    left_over = message_length % keyword.length
    binding.pry
  end

end
