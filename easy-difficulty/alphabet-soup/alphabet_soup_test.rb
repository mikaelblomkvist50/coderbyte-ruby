require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!
require_relative 'alphabet_soup'

class WordTest < Minitest::Test

  def test_converts_word_into_alphabetical_order_v1
    assert_equal("bcdeeorty", Word.alphabet_soup_v1("coderbyte"))
    assert_equal("elov", Word.alphabet_soup_v1("love"))
    assert_equal("ehllo", Word.alphabet_soup_v1("hello"))
    assert_equal("oopy", Word.alphabet_soup_v1("yoop"))
    assert_equal("abcdef", Word.alphabet_soup_v1("defbca"))
    assert_equal("acmmo", Word.alphabet_soup_v1("comma"))
    assert_equal("bcdllo", Word.alphabet_soup_v1("loldcb"))
    assert_equal("eelrtt", Word.alphabet_soup_v1("letter"))
    assert_equal("ackqu", Word.alphabet_soup_v1("quack"))
    assert_equal("ab", Word.alphabet_soup_v1("ba"))
  end

  def test_converts_word_into_alphabetical_order_v2
    assert_equal("bcdeeorty", Word.alphabet_soup_v2("coderbyte"))
    assert_equal("elov", Word.alphabet_soup_v2("love"))
    assert_equal("ehllo", Word.alphabet_soup_v2("hello"))
    assert_equal("oopy", Word.alphabet_soup_v2("yoop"))
    assert_equal("abcdef", Word.alphabet_soup_v2("defbca"))
    assert_equal("acmmo", Word.alphabet_soup_v2("comma"))
    assert_equal("bcdllo", Word.alphabet_soup_v2("loldcb"))
    assert_equal("eelrtt", Word.alphabet_soup_v2("letter"))
    assert_equal("ackqu", Word.alphabet_soup_v2("quack"))
    assert_equal("ab", Word.alphabet_soup_v2("ba"))
  end

end
