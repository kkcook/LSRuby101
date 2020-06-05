# Array Average

# Problem: write method that takes an array of integers and returns average of all numbers in the array
# E: array is never empty or negative, examples below
# DS: array
# A: iterate through array and calc sum, then divide by array size

# Further exploration: 

def average(nums)
  nums.reduce(0.0, &:+) / nums.size
end

#Examples
puts average([1, 5, 87, 45, 8, 8])
puts average([9, 47, 23, 95, 16, 52])