# Palindromic Strings pt. 1

# Prob: write a method that returns true if input is palindrome
# Datastructures: strings
# Alg: just see if string == string.reverse

def palindrome?(word)
  word == word.reverse
end

# Examples: 
puts palindrome?('madam') == true
puts palindrome?('Madam') == false          # (case matters)
puts palindrome?("madam i'm adam") == false # (all characters matter)
puts palindrome?('356653') == true