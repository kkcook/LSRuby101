# frozen_string_literal: true

# Sum of Digits

# Problem: write a method that takes an argument, a pos int, and returns the sum of its digits
# Examples below
# Datastructures: ints
# Alg: split num into digits via string/chars, turn back into nums, sum

def sum(number)
  number.to_s.chars.map(&:to_i).reduce(:+)
end

# Examples
puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
