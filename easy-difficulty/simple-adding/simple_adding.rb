class Adding

  def self.simple_adding(number)
    (0..number).to_a.inject(:+)
  end

end

# puts Adding.simple_adding(13)

# >> 91
