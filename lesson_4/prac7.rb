# Problem: create a hash that shows frequency of each letter in statement
# Input: string, Output: hash of string chars and ints as values
# Edge cases: empty string, non-string input
# Data structures: hash
# Algorithm: iterate through string, if no key for char, create key, then add one to value for each key


statement = "The Flintstones Rock"
character_hash = {}

statement.each_char do |char|
    if character_hash[char] 
        character_hash[char] += 1
    else
        character_hash[char] = 1
    end
end

p character_hash