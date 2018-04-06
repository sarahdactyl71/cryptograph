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
    array = []
    until count == 26
      v = character_map.rotate(count)
      count += 1
      array << v
    end
    array
  end

end
