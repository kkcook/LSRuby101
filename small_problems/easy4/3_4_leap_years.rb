# Leap Years

# Write a program that calculates leap years
#   Leap years are every 4 years aside from 100 years that aren't 
#   Evenly divisible by 4 (so leap on 100, not on 400)
#   % 4 yes, % 100 no, % 400 yes
# Input int, output boolean
# Examples below
# Algorithm: check if % 400 then leap, then check % 100 not leap,
#   then % 4 leap, then not leap



# Examples:
puts leap_year?(2016) == true
puts leap_year?(2015) == false
puts leap_year?(2100) == false
puts leap_year?(2400) == true
puts leap_year?(240000) == true
puts leap_year?(240001) == false
puts leap_year?(2000) == true
puts leap_year?(1900) == false
puts leap_year?(1752) == true
puts leap_year?(1700) == false
puts leap_year?(1) == false
puts leap_year?(100) == false
puts leap_year?(400) == true

