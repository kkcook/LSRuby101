# frozen_string_literal: true

# Palindromic Strings pt. 1

# Prob: write a method that returns true if input is palindrome
# Datastructures: strings
# Alg: just see if string == string.reverse

# further exploration: make it so it can take a string or array

def palindrome?(word)
  word == word.reverse
end

# Examples:
puts palindrome?('madam') == true
puts palindrome?('Madam') == false          # (case matters)
puts palindrome?("madam i'm adam") == false # (all characters matter)
puts palindrome?('356653') == true
puts palindrome?([5, 6, 7, 6, 5]) == true
puts palindrome?(['a', 7, nil]) == false