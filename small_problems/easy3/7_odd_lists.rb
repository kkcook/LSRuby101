# Odd Lists
# P: write method that takes every other val from array and returns it
# D: arrays
# A: create new array based on index of input array
# Further exploration: find two other ways to do this.

# def oddities(input_array)
#   output = []
#   input_array.each_with_index do |element, index|
#     if index.even?
#       output << element
#     end
#   end
#   output
# end

# def oddities(input)
#   index = 0
#   output = []
#   while index < input.length
#     output << input[index]
#     index += 2
#   end
#   output
# end

def oddities(input)
  input.select.with_index {|_, index| index.even?}
end

# Examples:
puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []



