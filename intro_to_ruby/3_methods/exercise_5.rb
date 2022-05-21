# fixed scream method

def scream(words)
  words = words + "!!!!"
  puts words 
  # Now the method returns the nil object because that is the value
  # that puts() always returns
end

scream("Yippeee")