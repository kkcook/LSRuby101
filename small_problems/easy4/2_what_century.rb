# frozen_string_literal: true

# What Century is That?

# P: write a method that takes a year and returns century
# E: at bottom
# D: arrays, hash for suffix
# A: see if number ends in 0, divide by 100, associate suffix by last digit from hash

def century(year = 1)
  suffixes = { 0 => 'th', 1 => 'st', 2 => 'nd', 3 => 'rd', 4 => 'th', 5 => 'th', 6 => 'th', 7 => 'th', 8 => 'th', 9 => 'th' }

  century = if year % 100 == 0
               year / 100
             else
               (year / 100) + 1
             end

  last_digit = century.digits.first
  century.to_s + suffixes[last_digit]
end

# Examples
puts century(2000) == '20th'
puts century(2001) == '21st'
puts century(1965) == '20th'
puts century(256) == '3rd'
puts century(5) == '1st'
puts century(10103) == '102nd'
puts century(1052) #== '11th'
puts century(1127) #== '12th'
puts century(11201) #== '113th'
