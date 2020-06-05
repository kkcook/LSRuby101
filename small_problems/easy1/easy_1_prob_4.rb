# frozen_string_literal: true

# Prob: write a method that counts the number of occurrences of each element in given array
# Input: array, output: hash
# Edge cases: empty array...
# Datastructure: array to hash
# Algorithm: iterate through each and see if key exists, if so, add one to count, otherwise create key and set value to 1

vehicles = %w[
  car car truck car SUV truck
  motorcycle motorcycle car truck
]

#   def count_occurrences(list)
#     output = {}
#     list.each do |element|
#         if output[element]
#             output[element] += 1
#         else
#             output[element] = 1
#         end
#     end
#
#     output
#   end

def count_occurrences(list)
    output = {}

    list.uniq.each do |element|
        output[element] = list.count(element)
    end

    output.each do |key, value|
        puts "#{key} => #{value}"
    end
end

count_occurrences(vehicles)
