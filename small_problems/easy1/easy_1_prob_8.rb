# Array Average

# Problem: write method that takes an array of integers and returns average of all numbers in the array
# E: array is never empty or negative, examples below
# DS: array
# A: iterate through array and calc sum, then divide by array size

def average(nums)
  nums.sum / nums.count
end

#Examples
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
