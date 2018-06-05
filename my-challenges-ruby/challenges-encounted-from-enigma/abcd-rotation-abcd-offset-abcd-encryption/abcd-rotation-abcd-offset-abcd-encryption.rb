require 'pry'
class Magic

  def initialize(key, date)
    @key = key
    @date = date
  end

  def rotation_numbers
    rotation_array = []
    rotation_array << @key[0..1].to_i
    rotation_array << @key[1..2].to_i
    rotation_array << @key[2..3].to_i
    rotation_array << @key[3..4].to_i
   #rotation_array => [41, 15, 52, 21]
  end

  def square_date_grab_last_4_digits(date)
    #date => "020315"
    (date.to_i ** 2).to_s.chars.map(&:to_i).last(4)
  end

  def offset_numbers
    offset_array = square_date_grab_last_4_digits(@date)
   #offset_array = whatever the method square_date_grab_last_4_digits returns at the end.
   #offset_array => [9, 2, 2, 5]
  end

  def encrypt_numbers
    [offset_numbers, rotation_numbers].transpose.map {|x| x.reduce(:+)}
  end #=> [50, 17, 54, 26]
end
