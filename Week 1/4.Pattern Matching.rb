def patternMatch(pattern, genome)
  positions = []
  (0..genome.length - pattern.length).each do |i|
    positions << i if genome[i, pattern.length] == pattern
  end
  positions
end

pattern = 'ATA'
genome = 'GACGATATACGACGATA'
puts patternMatch(pattern, genome).join(' ')
