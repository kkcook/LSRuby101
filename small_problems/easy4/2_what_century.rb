# What Century is That?

# P: write a method that takes a year and returns century
# E: at bottom
# D: arrays, hash for suffix
# A: see if number ends in 0, divide by 100, associate suffix by last digit from hash

def century(year = 1)
  suffixes = {0 => 'th', 1 => 'st', 2 => 'nd', 3 => 'rd', 4 => 'th', 5 => 'th', 6 => 'th', 7 => 'th', 8 => 'th', 9 => 'th'}
  cent_num = 0
  if year % 100 == 0
    cent_num = year / 100
  else
    cent_num = (year / 100) + 1
  end
  cent_num.to_s
end

puts century(2010)
puts century(1000)

# Examples
# century(2000) == '20th'
# century(2001) == '21st'
# century(1965) == '20th'
# century(256) == '3rd'
# century(5) == '1st'
# century(10103) == '102nd'
# century(1052) == '11th'
# century(1127) == '12th'
# century(11201) == '113th'
