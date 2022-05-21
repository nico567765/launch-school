num = 1234
puts num
puts "Thousands place: " + (num / 1000).to_s
puts "Hundreds place: " + (num % 1000 / 100).to_s
puts "Tens place: " + (num % 100 / 10).to_s
puts "Ones place: " + (num % 10).to_s