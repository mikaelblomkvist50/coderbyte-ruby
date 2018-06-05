require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!
require_relative 'pre_encrypted_letter_corresponding_index'

class MagicTest < Minitest::Test

  def test_message_corresponds_to_19_7_8_18
    message = "this"

    m = Magic.new(message)
    assert_equal [19, 7, 8, 18], m.corresponding_index
  end

  def test_message_corresponds_to_19_7_8_18_36_8_18_36_18_14_36_18_4_2_17_4_19_36_37_37_4_13_3_37_37
    message = "this is so secret ..end.."
    array = [19, 7, 8, 18, 36, 8, 18, 36, 18, 14, 36, 18, 4, 2, 17, 4, 19, 36, 37, 37, 4, 13, 3, 37, 37]

    m = Magic.new(message)
    assert_equal  array, m.corresponding_index
  end
end
