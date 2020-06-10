# frozen_string_literal: true

# What Century is That?

# P: write a method that takes a year and returns century
# E: at bottom
# D: arrays, hash for suffix
# A: see if number ends in 0, divide by 100, associate suffix by last digit from hash

def century(year = 1)
  century = if year % 100 == 0
              year / 100
            else
              (year / 100) + 1
             end

  century.to_s + suffix(century)
end

def suffix(century)
  special_cases = [11, 12, 13]
  return 'th' if special_cases.include?(century % 100)

  last_digit = century % 10
  case last_digit
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end

# Examples
puts century(2000) == '20th'
puts century(2001) == '21st'
puts century(1965) == '20th'
puts century(256) == '3rd'
puts century(5) == '1st'
puts century(10_103) == '102nd'
puts century(1052) == '11th'
puts century(1127) == '12th'
puts century(11_201) == '113th'
