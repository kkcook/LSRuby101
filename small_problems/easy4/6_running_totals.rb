# frozen_string_literal: true

# Running Totals
# P: write method that takes array and returns array of same size
#   returned array should display running total sum from supplied array
# Examples at bottom
# DS: arrays
# Alg: looks like a map or each prob, maybe inject, could look at subset of
#   array as it's own array for each sum, could save to external variable sum
#   going to start with sum = first element in array, each iteration is += next element

def running_total(input)
  sum = 0
  input.map { |num| sum += num }
end

# Examples
p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []
