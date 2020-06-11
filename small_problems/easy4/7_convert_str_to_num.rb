# frozen_string_literal: true

# Convert String to Number
# Prob: convert string to number without .to_i
# Examples at bottom
# Datastructure: hash matching, arrays
# Alg: make hash of strings and ints that correspond, 
#   split string into array of chars, match to ints, 
#   sum the individual digits multiplied by their place, return

NUMBERS = { '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9 }.freeze

def string_to_integer(string_num)
  arr = string_num.chars.reverse

  output = 0
  digits_multiplier = 1

  arr.each do |digit|
    digit = NUMBERS[digit]
    output += (digit * digits_multiplier)
    digits_multiplier *= 10
  end

  output
end

# Examples
p string_to_integer('4321') == 4321
p string_to_integer('570') == 570
