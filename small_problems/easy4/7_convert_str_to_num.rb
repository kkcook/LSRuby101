# frozen_string_literal: true

# Convert String to Number
# Prob: convert string to number without .to_i
# Examples at bottom
# Datastructure: hash matching, arrays
# Alg: make hash of strings and ints that correspond, 
#   split string into array of chars, match to ints, 
#   sum the individual digits multiplied by their place, return

NUMBERS = {
   '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
   '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9 
  }.freeze

def string_to_integer(string_num)
  int_array = string_num.chars.map {|n| NUMBERS[n]}
  int_array.inject { |sum, digit| sum * 10 + digit }
end

# Examples
p string_to_integer('4321') == 4321
p string_to_integer('570') == 570
