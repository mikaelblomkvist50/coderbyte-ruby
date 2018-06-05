require 'pry'
class Squares

  def initialize(upto_number)
    @upto_number = upto_number
  end

  def square_of_sum
    sum = (1..@upto_number).reduce(:+) || 1
    square_of_sum = sum ** 2
  end

  def sum_of_squares
    squares = (1..@upto_number).to_a.map { |number| number ** 2 }
    sum_of_squares = squares.reduce(:+) || 1
  end

  def difference
    square_of_sum - sum_of_squares
  end
end

p squares = Squares.new(0).square_of_sum
p squares = Squares.new(5).square_of_sum

p squares = Squares.new(0).sum_of_squares
p squares = Squares.new(5).sum_of_squares

p squares = Squares.new(0).difference
p squares = Squares.new(5).difference

# >> 1
# >> 225
# >> 1
# >> 55
# >> 0
# >> 170
