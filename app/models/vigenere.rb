class Vigenere < ApplicationRecord

  def encode(message, keyword)
    binding.pry
    message_legnth = message.length
    keyword = keyword_length(keyword, message_legnth)
  end

  def decode(message, keyword)
  end

  def keyword_length(keyword. message_legnth)
    message_legnth.times do
      
    end
  end

end
