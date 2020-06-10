# frozen_string_literal: true

# Palindromic Strings pt. 2

# P: write a method that finds palindromes without
#   worrying about case or punctuation
# Examples at bottom
# Datastructure: array
# Alg: convert string to array, getting rid of all non
#   numbers or letters...

def palindrome?(word)
  word == word.reverse
end

def real_palindrome?(input)
  new_string = input.downcase.delete('^a-z0-9')
  palindrome?(new_string)
end

# Examples:
p real_palindrome?('madam') == true
puts real_palindrome?('Madam') == true           # (case does not matter)
puts real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
puts real_palindrome?('356653') == true
puts real_palindrome?('356a653') == true
puts real_palindrome?('123ab321') == false
