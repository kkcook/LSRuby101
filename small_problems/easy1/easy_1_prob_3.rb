# Prob - write a method that takes one int arg and returns a list of digits in the number
# Input: int, Output: array of ints
# Edge cases - single digit input
# Datastructure - array
# Algorithm - make empty array, loop, doing modulo 10 adding remainder to array, breaking after last time div 10 works



def digits(number)
    number.to_s.chars.map(&:to_i)
end

p digits(100)