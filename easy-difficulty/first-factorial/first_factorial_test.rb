require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!
require_relative 'first_factorial'

class FactorialTest < Minitest::Test

  def test_factorial_of_0_equals_1
    # skip
    assert_equal(1, Factorial.first_factorial(0))
  end

  def test_factorial_of_1_equals_1
    # skip
    assert_equal(1, Factorial.first_factorial(1))
  end

  def test_factorial_of_2_equals_2
    # skip
    assert_equal(2, Factorial.first_factorial(2))
  end

  def test_factorial_of_3_equals_6
    # skip
    assert_equal(6, Factorial.first_factorial(3))
  end

  def test_factorial_of_4_equals_24
    # skip
    assert_equal(24, Factorial.first_factorial(4))
  end

  def test_factorial_of_5_equals_120
    # skip
    assert_equal(120, Factorial.first_factorial(5))
  end

  def test_factorial_of_6_equals_720
    # skip
    assert_equal(720, Factorial.first_factorial(6))
  end

  def test_factorial_of_7_equals_5040
    # skip
    assert_equal(5040, Factorial.first_factorial(7))
  end
end

# 0	1
# 1	1
# 2	2
# 3	6
# 4	24
# 5	120
# 6	720
# 7	5040
# 8	40320
# 9	362880
# 10	3628800
# 11	39916800
# 12	479001600
# 13	6227020800
# 14	87178291200
# 15	1307674368000
# 16	20922789888000
# 17	355687428096000
# 18	6402373705728000
