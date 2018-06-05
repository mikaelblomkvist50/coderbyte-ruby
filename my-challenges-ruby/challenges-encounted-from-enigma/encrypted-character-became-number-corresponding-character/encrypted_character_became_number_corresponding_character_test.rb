require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!
require_relative 'encrypted_number_corresponding_character'

class MagicTest < Minitest::Test

  def test_69_24_62_44_corresponds_to_5_y_y_g
    m = Magic.new([69, 24, 62, 44])
    assert_equal ['5', 'y', 'y', 'g'], m.corresponding_character
  end

  def test_long_array_corresponds_to_5_y_y_g_k_z_8_y_4_5_o_g_q_t_7_4_5_p_p_z_q_4_t_0_l
    m = Magic.new([69, 24, 62, 44, 86, 25, 72, 62, 68, 31, 90, 44, 54, 19, 71, 30, 69, 53, 91, 63, 54, 30, 57, 64, 87])
    expect = ["5", "y", "y", "g", "k", "z", "8", "y", "4", "5", "o", "g", "q", "t", "7", "4", "5", "p", "p", "z", "q", "4", "t", "0", "l"]
    assert_equal expect, m.corresponding_character
  end
end
