require 'prime'

class Raindrops

  # prime factors
  def self.convert(number)
    hash = { 3 => 'Pling', 5 => 'Plang', 7 => 'Plong'}
    factors_of_given_number = number.prime_division.map(&:first)
    raindrop_speak = factors_of_given_number.map { |number| hash[number] }.join

    if raindrop_speak == ""
      return number.to_s
    else
      return raindrop_speak
    end
  end

end

p Raindrops.convert(8)
p Raindrops.convert(10)

# >> 8
# >> "Plang"
