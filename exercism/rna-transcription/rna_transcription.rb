class Complement

  def self.of_dna(dna_strand)
    dna_rna = { 'A' => 'U', 'C' => 'G', 'G' => 'C', 'T' => 'A'}
    rna = dna_strand.chars.map { |letter| dna_rna[letter] }
    if rna.include?(nil)
      return rna = ''
    else
      rna.join
    end
  end

end
