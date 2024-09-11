def reverse_complement(dna)
  complements = {'A' => 'T', 'C' => 'G', 'G' => 'C', 'T' => 'A'}
  result = ''
  (dna.length - 1).downto(0) do |i|
    result << complements[dna[i]]
  end
  result
end

dna = gets.chomp
puts reverse_complement(dna)
