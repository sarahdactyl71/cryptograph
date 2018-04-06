class Vigenere < ApplicationRecord

  def encode(message, keyword)
    binding.pry
    message_length = message.length
    keyword = keyword_length(keyword, message_length)
  end

  def decode(message, keyword)
  end

  def keyword_length(keyword. message_length)
    until keyword.length == message_length
      binding.pry
    end
  end

end
