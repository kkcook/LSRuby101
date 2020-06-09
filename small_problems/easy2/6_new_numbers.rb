# Odd Numbers
# P: Print all odd numbers from 1 to 99, inclusive. 
#   All numbers should be printed on separate lines.
# Examples: n/a
# Datastructure: loops
# Algorithm: for 0..100 puts if odd

# 99.times {|x| puts x if x.odd?}

#Further exploration: try another way

puts (1...100).select {|n| n.odd?}