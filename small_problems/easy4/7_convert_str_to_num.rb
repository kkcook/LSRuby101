# frozen_string_literal: true

# Convert String to Number
# Prob: convert string to number without .to_i
# Examples at bottom
# Datastructure: searching of some kind, arrays
# Alg: get character id of string character, replace with int

NUMBERS = { '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9 }.freeze

def string_to_integer(string_num)
  backwards_array = string_num.chars.reverse
  backwards_array.map! { |i| NUMBERS[i] }

  output = 0
  digits_multiplier = 1

  backwards_array.each_with_index do |digit, _index|
    output += (digit * digits_multiplier)

    digits_multiplier *= 10
  end

  output
end

# Examples
p string_to_integer('4321') == 4321
p string_to_integer('570') == 570
