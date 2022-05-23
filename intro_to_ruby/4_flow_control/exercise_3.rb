# get a number from 0 to 100 from user
# report if its between 0-50, or above 100

class String
# confirm that letters and symbol characters aren't entered
  def valid_number?
    self.each_char do |char|
      unless ('0'..'9') === char
        return false
      end
    end
    true
  end
end

def check_number(num)
  if num <= 50
    "That number is between 0 and 50"
  elsif num >= 51 && num <= 100
    "That number is between 51 and 100"
  else
    "That number is above 100"
  end
end

def get_number
  number = "not a numeral"
  until number.valid_number?
    puts "Enter a number between 0 and 100: "
    number = gets.chomp
  end
  number.to_i
end

number = get_number
puts check_number(number)