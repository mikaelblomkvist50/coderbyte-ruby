class Factorial

  def self.first_factorial(number)
    (1..number).reduce(:*) || 1
    #if returns nil then return 1
    #Hence if we pass in 0 iit returns nil hence then return 1
  end

end
