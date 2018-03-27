class Monoalphabetic < ApplicationRecord

  def scramble(message, num)
    message.map! { |letter| letter + num }
    message
  end

  def decode(message, num)

  end
end
