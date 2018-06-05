class Hamming

  def self.compute(strand1, strand2)

    if (strand1 <=> strand2) == 0
      0
    else
      strand1_array = strand1.scan /\w/
      strand2_array = strand2.scan /\w/

      raise ArgumentError.new("Hamming distance is not defined for sequences of unequal length!") unless (strand1_array.length == strand2_array.length)

      hamming_difference_array = strand1_array.zip(strand2_array).map { |pair| pair[0] == pair[1] }
      hamming_difference_amount = hamming_difference_array.count(false)
    end
  end

end
