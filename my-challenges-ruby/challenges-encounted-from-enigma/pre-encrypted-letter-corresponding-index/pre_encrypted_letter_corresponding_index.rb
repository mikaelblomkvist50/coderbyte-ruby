CHARACTER_MAP = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", " ", ".", ","]

class Magic

  def initialize(message)
    @message = message
  end

  def corresponding_index
    message_array = @message.split('')
    message_array.map { |letter| CHARACTER_MAP.index("#{letter}") }
  end
end
