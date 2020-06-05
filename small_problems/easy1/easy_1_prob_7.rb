# Stringy Strings

# Prob: write method that takes pos int and returns string of
#       alternating 10101's to length of input int
# Examples at bottom
# Datastructures:
# A: int.times if odd will end in 1 if even will end in 0
#       If odd, minus 1 / 2 print "10"'s, if even / 2 print "10"s

def stringy(num)
  output = ''
  if num.odd?
    output << ('10' * ((num - 1) / 2))
    output << '1'
  else
    output << '10' * (num/2)
  end
end

puts stringy(10)
puts stringy(1)

# Examples
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
