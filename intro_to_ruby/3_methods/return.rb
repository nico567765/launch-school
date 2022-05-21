def add_three(number)
  return number + 3
  number + 4
end

def just_assignment(number)
  foo = number + 3
end

def add_three(n)
  new_value = n + 3
  puts new_value
  new_value
  
end

# another_value = just_assignment(4)
# puts another_value

# returned_value = add_three(4)
# puts returned_value

add_three(5).times { puts "Will this work?"}