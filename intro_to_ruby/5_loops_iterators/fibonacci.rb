# fibonnaci.rb

def fibonacci(number)
  if number < 2
    number
  else
    fibonacci(number - 1) + fibonacci(number - 2)
  end
end

for i in 0..4 
  print "#{fibonacci(i)} "
end

puts ""