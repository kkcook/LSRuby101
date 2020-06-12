# frozen_string_literal: true

# Convert Number to a String

# P: convert pos int to string
# E: at bottom, watch out for empty inputs maybe
# D: array or hash of corresponding int/string pairs
# A: break int into digit array, assign string pairs, join, return

NUMBERS = %w[0 1 2 3 4 5 6 7 8 9].freeze

def integer_to_string(int)
  int.digits.reverse.join
end

# Examples:
p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'
