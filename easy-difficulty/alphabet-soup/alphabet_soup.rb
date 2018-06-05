class Word
  def self.alphabet_soup_v1(sentence)
    sentence.split('').sort.join
  end

  def self.alphabet_soup_v2(sentence)
    sentence.chars.sort.join #chars is a shorthand for str.each_char.to_a
  end
end
