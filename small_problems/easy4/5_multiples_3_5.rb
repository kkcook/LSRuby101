# Multiples of 3 and 5

# Write a program that returns the sume of all multiples of 
# 3 and 5 between 1 and a supplied pos int greater than 1

# Input int output int
# Examples at bottom
# Datastructure: int -> array -> int
# Alg: append all evenly dividing factors into an array
#  Return the sum of that aray

def multisum(num)
  factor_array = []
  sum = 0

  (3..num).map do |num|
    if num % 3 == 0 || num % 5 == 0
      factor_array << num
    end
  end

  factor_array.each {|factor| sum += factor}
  sum
end


# Examples:
puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168