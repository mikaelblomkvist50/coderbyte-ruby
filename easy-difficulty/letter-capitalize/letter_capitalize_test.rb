require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!
require_relative 'letter_capitalize'

class WordTest < Minitest::Test

  def test_sentence_capitalize_beginning_of_every_word
    assert_equal("Hello World", Word.letter_capitalize_v1("hello world"))
    assert_equal("I Love Coding", Word.letter_capitalize_v1("i love coding"))
    assert_equal("Yooooooo Hi", Word.letter_capitalize_v1("yooooooo hi"))
    assert_equal("Thisiscool", Word.letter_capitalize_v1("thisiscool"))
    assert_equal("Oxford Comma", Word.letter_capitalize_v1("oxford comma"))
    assert_equal("Letter By Letter Go", Word.letter_capitalize_v1("letter by letter go"))
    assert_equal("Jelloupin Here", Word.letter_capitalize_v1("jelloupin here"))
  end

  def test_sentence_with_weird_characters_capitalize_beginning_of_every_word
    assert_equal("H3llo Yo People", Word.letter_capitalize_v1("h3llo yo people"))
  end

  def test_individual_letters_get_capitalize
    assert_equal("A B C D E F", Word.letter_capitalize_v1("a b c d e f"))
  end

  def test_keeps_question_mark_as_part_of_the_word_v1
    #skip
    assert_equal("Is Your Birthday On The 10th?", Word.letter_capitalize_v1("Is your birthday on the 10th?"))
  end

  def test_keeps_question_mark_as_part_of_the_word_v2
    assert_equal("Is Your Birthday On The 10th?", Word.letter_capitalize_v2("Is your birthday on the 10th?"))
  end

end
