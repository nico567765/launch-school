# check if a number is included in an array

arr = [1, 3, 5, 7, 9, 11]
number = 3

if arr.include?(number)  
  puts"The array does contain #{number}"
else
  puts "The array does not contain #{number}"
end