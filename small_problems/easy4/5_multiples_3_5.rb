# frozen_string_literal: true

# Multiples of 3 and 5

# Write a program that returns the sume of all multiples of
# 3 and 5 between 1 and a supplied pos int greater than 1

# Input int output int
# Examples at bottom, added 1
# Datastructure: int -> array -> int
# Alg: append all evenly dividing factors into an array
#  Return the sum of that aray

# Further exploration solve with Enumerable#inject

def multisum(num)
  (1..num).select {|x| x % 3 == 0 || x % 5 == 0}.inject(:+)
end

# Examples:
puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234_168
