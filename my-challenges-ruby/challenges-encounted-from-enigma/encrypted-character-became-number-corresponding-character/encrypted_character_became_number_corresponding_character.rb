CHARACTER_MAP = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", " ", ".", ","]

class Magic

  def initialize(encrypted_number_array)
    @encrypted_number_array = encrypted_number_array
  end

  def corresponding_character
    character_map_index_count = CHARACTER_MAP.size - 1
    @encrypted_number_array.map { |number| CHARACTER_MAP[number % character_map_index_count] }
  end

end
