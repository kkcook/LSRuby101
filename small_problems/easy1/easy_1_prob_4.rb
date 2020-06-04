# Prob: write a method that counts the number of occurrences of each element in given array
# Input: array, output: hash
# Edge cases: empty array...
# Datastructure: array to hash
# Algorithm: iterate through each and see if key exists, if so, add one to count, otherwise create key and set value to 1

vehicles = [
    'car', 'car', 'truck', 'car', 'SUV', 'truck',
    'motorcycle', 'motorcycle', 'car', 'truck'
  ]

  def count_occurrences(list)
    output = {}
    list.each do |element|
        if output[element]
            output[element] += 1
        else
            output[element] = 1
        end
    end

    output
  end
  
  p count_occurrences(vehicles)