class Word
  def self.letter_capitalize_v1(sentence)
    sentence.split(/\W+/).each { |word| word.capitalize! }.join(' ')
  end

  def self.letter_capitalize_v2(sentence)
    sentence.split.map(&:capitalize).join(' ')
  end

end

puts Word.letter_capitalize_v1("h3llo yo people")
puts Word.letter_capitalize_v1("Is your birthday on the 10th?")
puts Word.letter_capitalize_v1("Today !i would like to say h3llo!")

puts Word.letter_capitalize_v2("h3llo yo people")
puts Word.letter_capitalize_v2("Is your birthday on the 10th?")
puts Word.letter_capitalize_v2("Today !i would like to say h3llo!")

# >> H3llo Yo People
# >> Is Your Birthday On The 10th
# >> Today I Would Like To Say H3llo
# >> H3llo Yo People
# >> Is Your Birthday On The 10th?
# >> Today !i Would Like To Say H3llo!

#Very interesting the difference between split.(/\W/) vs split

#*I like how split.(/\W/) gets rid of the '!' from '!i' how ever I don't like how it gets rid of the '?' as well.
