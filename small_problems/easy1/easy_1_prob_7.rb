# frozen_string_literal: true

# Stringy Strings

# Prob: write method that takes pos int and returns string of
#       alternating 10101's to length of input int
# Examples at bottom
# Datastructures:
# A: int.times if odd will end in 1 if even will end in 0
#       If odd, minus 1 / 2 print "10"'s, if even / 2 print "10"s

# FIRST PASS
# def stringy(num)
#   output = ''
#   if num.odd?
#     output << ('10' * ((num - 1) / 2))
#     output << '1'
#   else
#     output << '10' * (num/2)
#   end
# end

# New algorithm idea: print 1 or zero based on odd/evenness of the index

# Additional work: modify to take additional optional parameter

def stringy(num, inverse = 1)
  output = []

  num.times do |x|
    output << if (inverse == 1 && x.even?) || (inverse.zero? && x.odd?)
                1
              else
                0
              end
  end

  output.join
end

# Examples
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

# Extra tests
puts stringy(10)
puts stringy(1)
puts stringy(0)
