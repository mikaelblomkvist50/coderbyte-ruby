require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!
require_relative 'letter_changes'

class WordTest < Minitest::Test

  def test_word
    #For the input "sentence" your output was incorrect. The correct answer is tfOUfOdf
    assert_equal("tfOUfOdf", Word.letter_changer("sentence"))
    assert_equal("dpEfsczUf", Word.letter_changer("coderbyte"))
    assert_equal("pygpsE", Word.letter_changer("oxford"))
  end

  def test_word_with_weird_characters
    #For the input "replace!*" your output was incorrect. The correct answer is sfqmbdf!*
    assert_equal("sfqmbdf!*", Word.letter_changer("replace!*"))
    assert_equal("cfbvUjgvm^", Word.letter_changer("beautiful^"))
  end

  def test_sentence
    #For the input "hello world" your output was incorrect. The correct answer is Ifmmp xpsmE
    assert_equal("Ifmmp xpsmE", Word.letter_changer("hello world"))
    assert_equal("b c d Eff", Word.letter_changer("a b c dee"))
  end

  def test_sentence_with_werid_characters
    #For the input "this long cake@&" your output was incorrect. The correct answer is UIjt mpOh dblf@&
    assert_equal("UIjt mpOh dblf@&", Word.letter_changer("this long cake@&"))
  end


  def test_numbers
    #For the input "123456789ae" your output was incorrect. The correct answer is 123456789bf
    assert_equal("123456789bf", Word.letter_changer("123456789ae"))
  end


  def test_long_confusing_sentence
    #For the input "a confusing /:sentence:/[ this is not!!!!!!!~" your output was incorrect. The correct answer is b dpOgvtjOh /:tfOUfOdf:/[ UIjt jt OpU!!!!!!!~
    assert_equal("b dpOgvtjOh /:tfOUfOdf:/[ UIjt jt OpU!!!!!!!~", Word.letter_changer("a confusing /:sentence:/[ this is not!!!!!!!~"))
  end

end
