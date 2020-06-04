# Prob - write a method that takes one int arg and returns a list of digits in the number
# Input: int, Output: array of ints
# Edge cases - single digit input
# Datastructure - array
# Algorithm - make empty array, loop, doing modulo 10 adding remainder to array, breaking after last time div 10 works



def digits(number)
    num = number
    digit_array = []
    loop do
        digit_array << num % 10
        break if num < 10
        num = num / 10
    end
    digit_array.reverse
end

p digits(1000)