LONGEST = 26

def al(str)
  str = str.to_s
  str.ljust(LONGEST)
end

def ar(str)
  str = str.to_s
  str.rjust(10)
end

puts al("Owls currently in the air:") + ar('389.986')
puts al("Owls on the ground:") + ar('342')
puts al("Owls underground:") + ar('232')