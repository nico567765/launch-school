# Leap years 1

# Mine - I should have thought about the math before the logic
# def leap_year?(year)
#   return false if year < 1 || year % 4 != 0
#   if year % 100 == 0
#     year % 400 == 0
#   else
#     true
#   end
# end

# LS solutions

# def leap_year?(year)
#   if year % 400 == 0
#     true
#   elsif year % 100 == 0
#     false
#   else
#     year % 4 == 0
#   end
# end

# def leap_year?(year)
#   (year % 400 == 0) || (year % 4 == 0 && year % 100 != 0)
# end

# Further exploration
def leap_year?(year)
  if year % 4 == 0
    if year % 100 == 0
      if year % 400 == 0
        true
      else
        false
      end
    else
      true
    end
  else
    false
  end
end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true