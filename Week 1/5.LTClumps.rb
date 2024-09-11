def kmersTable(text, k)
  table = Hash.new(0)
  (0..text.length - k).each do |i|
    table[text[i, k]] += 1
  end
  table
end

def clumps(genome, l, t, k)
  clumps = {}
  table = kmersTable(genome[0, l], k)
  table.each_pair do |kmer, count|
    clumps[kmer] = true if count >= t
  end
  (1..genome.length - l).each do |i|
    first_kmer = genome[i - 1, k]
    last_kmer = genome[i + l - k, k]
    table[first_kmer] -= 1
    table[last_kmer] += 1
    clumps[last_kmer] = true if table[last_kmer] >= t
  end
  clumps.keys
end

genome = gets.chomp
k, l, t = gets.chomp.split.map(&:to_i)
clumps_ = clumps(genome, l, t, k)
puts clumps_.size
