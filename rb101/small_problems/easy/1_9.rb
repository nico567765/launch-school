# Sum of digits

def sum(num)
  digits = num.to_s.split('')
  digits.map {|n| n.to_i}.sum
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
