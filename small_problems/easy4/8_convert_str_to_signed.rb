
# Convert string to signed number
# Prob: string may now have a sign at beginning,
#   return an int with a leading sign if necessary
# Examples at bottom
# Datastructure: strings and ints
# Alg: check first char, if + delete it, if neg, return 0 - value

NUMBERS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}.freeze

def string_to_integer(input)
  int_array = input.chars.map { |n| NUMBERS[n] }
  int_array.inject { |sum, digit| sum * 10 + digit }
end

def string_to_signed_integer(input)
  case input[0]
  when '-'
    - string_to_integer(input[1..-1])
  when '+'
    string_to_integer(input[1..-1])
  else
    string_to_integer(input)
  end
end

# Examples
p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100
