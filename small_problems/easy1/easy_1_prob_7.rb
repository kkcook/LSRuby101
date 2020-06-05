# frozen_string_literal: true

# Stringy Strings

# Prob: write method that takes pos int and returns string of
#       alternating 10101's to length of input int
# Examples at bottom
# Datastructures:
# A: int.times if odd will end in 1 if even will end in 0
#       If odd, minus 1 / 2 print "10"'s, if even / 2 print "10"s

# FIRST PASS
# def stringy(size)
#   numbers = ''
#   if size.odd?
#     numbers << ('10' * ((size - 1) / 2))
#     numbers << '1'
#   else
#     numbers << '10' * (size/2)
#   end
# end

# New algorithm idea: print 1 or zero based on odd/evenness of the index

# Additional work: modify to take additional optional parameter

def stringy(size, first_num = 1)
  numbers = []
  second_num = first_num.zero? ? 1 : 0

  size.times do |index|
    num = index.even? ? first_num : second_num
    numbers << num
  end

  numbers.join
end

# Examples
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

# Extra tests
puts stringy(10, 0)
puts stringy(1, 0)
puts stringy(0)
