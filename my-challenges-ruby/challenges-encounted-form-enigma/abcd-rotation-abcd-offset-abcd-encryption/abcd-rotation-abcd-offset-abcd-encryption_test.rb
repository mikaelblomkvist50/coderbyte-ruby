require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!
require_relative 'abcd_rotation_offset_encryption'

class MagicTest < Minitest::Test

  def test_rotation_numbers
    m = Magic.new('41521', '020315')
    assert_equal [41, 15, 52, 21], m.rotation_numbers
  end

  def test_offset_numbers
    m = Magic.new('41521', '020315')
    assert_equal [9, 2, 2, 5], m.offset_numbers
  end

  def test_encryption_numbers
    m = Magic.new('41521', '020315')
    assert_equal [50, 17, 54, 26], m.encrypt_numbers
  end
end
