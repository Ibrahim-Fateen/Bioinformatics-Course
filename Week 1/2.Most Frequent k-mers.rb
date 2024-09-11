def kmersTable(text, k)
  table = Hash.new(0)
  (0..text.length - k).each do |i|
    table[text[i, k]] += 1
  end
  table
end

def tableMax(table)
  max = 0
  table.each do |k, v|
    max = v if v > max
  end
  max
end

def mostFrequentKmers(text, k)
  table = kmersTable(text, k)
  max = tableMax(table)
  table.select { |k, v| v == max }.keys
end

text = gets.chomp
k = gets.chomp.to_i
puts mostFrequentKmers(text, k).join(" ")
