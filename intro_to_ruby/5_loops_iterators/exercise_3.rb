def countdown(number)
  puts number
  if number <= 0
    number
  else
    countdown(number - 1)
  end
end

countdown(10)