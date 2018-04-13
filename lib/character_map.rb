module CharacterMap

  def character_map
    [
      "a",
      "b",
      "c",
      "d",
      "e",
      "f",
      "g",
      "h",
      "i",
      "j",
      "k",
      "l",
      "m",
      "n",
      "o",
      "p",
      "q",
      "r",
      "s",
      "t",
      "u",
      "v",
      "w",
      "x",
      "y",
      "z"
          ]
  end

  def vigenere_grid
    count = 0
    hash = {}
    until count == 26
      character_map.each do |char|
        v = character_map.rotate(count)
        hash[char] = v
        count += 1
      end
    end
    hash
  end

end
