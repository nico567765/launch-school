def all_caps(words)
  words.length > 10 ? words.upcase : words
end

puts all_caps("too small")
puts all_caps("a long enough string")