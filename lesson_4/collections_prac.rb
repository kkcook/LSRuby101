=begin
Problem: Need to take an array of nums and a num to multiply that array by.
    Input: Array of ints, Int
    Output: Array of ints
Examples: empty array, zero, neg nums
Data structure: array
Algorithm: Create new empty array, iterate through input array, 
    write product of array at counter and input int to new array,
    return new array
Code!


=end


my_numbers = [1, 4, 3, 7, 2, 6]
my_multiplyer = 3

def multiply(numbers, multiplier)
    new_array = []
    counter = 0

    loop do
        break if counter == numbers.size
        new_array << numbers[counter] * multiplier
        counter += 1
    end

    new_array
end

p multiply(my_numbers, my_multiplyer) # => [3, 12, 9, 21, 6, 18]