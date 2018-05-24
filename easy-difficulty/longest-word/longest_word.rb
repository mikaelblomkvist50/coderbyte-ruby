class Words
  def self.find_longest_word_v1(sentence)
    words = sentence.split
    p words
    words.sort_by!(&:length)
    words.last
  end
end

p Words.find_longest_word_v1("letter after letter!!")
