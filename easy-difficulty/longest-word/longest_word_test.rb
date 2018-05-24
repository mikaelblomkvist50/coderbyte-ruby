require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!
require_relative 'longest_word'

class WordsTest < Minitest::Test

  def test_short_sentence
    assert_equal("oxford", Words.find_longest_word_v1("oxford press"))
  end

  def test_another_short_sentence
    assert_equal("dee", Words.find_longest_word_v1("a b c dee"))
  end

  def test_long_sentences
    assert_equal("sentence", Words.find_longest_word_v1("this is some sort of sentence"))
  end

  def test_ignores_weird_character
    assert_equal("longest", Words.find_longest_word_v1("longest word!"))
  end

  def test_ignores_weird_characters
    assert_equal("beautiful", Words.find_longest_word_v1("a beautiful sentence^&!"))
  end

  def test_returns_the_first_word_if_there_are_two_words_same_length
     assert_equal("hello", Words.find_longest_word_v1("hello world"))
  end

  def test_returns_the_first_word_if_there_are_two_words_same_length_with_weird_characterss
    assert_equal("letter", Words.find_longest_word_v1("letter after letter!!"))
  end

  def test_numbers
    assert_equal("123456789", Words.find_longest_word_v1("123456789 98765432"))
  end

  def test_long_confusing_sentence
    assert_equal("confusing", Words.find_longest_word_v1("a confusing /:sentence:/[ this is not!!!!!!!~"))
  end
end
