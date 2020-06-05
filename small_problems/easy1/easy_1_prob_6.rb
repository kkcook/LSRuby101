# frozen_string_literal: true
# Reverse It (pt. 2)

# Prob: write method that takes a string and returns string with all words over 5 chars reversed
# Input & output: string
# Examples at bottom after examples tag
# Datastructure: array
# Algorithm: split string into array for each word, iterate through array, if element.count >= 5 then reverse chars, then rejoin into string

def reverse_words(sentence)
    array_of_words = sentence.split
    array_of_words.map do |word|
        if word.size >= 5
            word.reverse!
        end
    end

    array_of_words.join(' ')
end

# Examples
puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
