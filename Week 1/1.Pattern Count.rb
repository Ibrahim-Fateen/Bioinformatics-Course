def patternCount(text, pattern)
  count = 0
  (0..text.length - pattern.length).each do |i|
    count += 1 if text[i, pattern.length] == pattern
  end
  count
end

text = gets.chomp
pattern = gets.chomp
puts patternCount(text, pattern)
