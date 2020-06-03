# Problem: write your own version of the titleize method
# Input/Output: strings
# Edge cases: empty strings, or strings with multiple spaces or weird punctuation
# Data structure: maybe array
# Algorithm: split string into word array, capitalize first letter of each word, re-string

words = "the flintstones rock"

=begin
FIRST ATTEMPT

def titleize(words) 
    word_array = words.split
    word_array.each {|word| word[0] = word[0].upcase}
    word_array.join(' ')
end
=end

p words.split.map {|word| word.capitalize}.join(' ')