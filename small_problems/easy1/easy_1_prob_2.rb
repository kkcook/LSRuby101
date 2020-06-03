# P: write method that takes an int (+-0) and returns true if the abs val is odd
# can't use .odd? in solution
# input: int, output: bool
# E: stated it's safe to assume that int is valid, check negs and zeros and one
# D: ints
# A: convert int to abs value, call .odd? on it

def is_odd?(num)
    num % 2 == 1
end

puts is_odd?(-3)