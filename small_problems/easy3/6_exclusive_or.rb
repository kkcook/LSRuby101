# Write a method for exclusive or
# Examples at bottom

def xor?(a, b)
  (a && !b) || (!a && b)
end

# examples:
puts xor?(5.even?, 4.even?) == true
puts xor?(5.odd?, 4.odd?) == true
puts xor?(5.odd?, 4.even?) == false
puts xor?(5.even?, 4.odd?) == false
