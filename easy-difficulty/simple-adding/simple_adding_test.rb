require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!
require_relative 'simple_adding'

class AddingTest < Minitest::Test

  def test_simple_adding_of_0_equals_0
    assert_equal(0, Adding.simple_adding(0))
  end

  def test_simple_adding_of_13_equals_91
    assert_equal(91, Adding.simple_adding(13))
  end

  def test_simple_adding_of_45_equals_1035
    assert_equal(1035, Adding.simple_adding(45))
  end

  def test_simple_adding_of_999_equals_499500
    assert_equal(499500, Adding.simple_adding(999))
  end

end
