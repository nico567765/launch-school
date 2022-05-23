arr = Array("a".."z").reverse
arr.each_with_index { |val, idx| puts "#{idx}: #{val}" }