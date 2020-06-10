# frozen_string_literal: true

# Palindromic Numbers

# P: Write a program that tells if number is palindrome
# Examples at bottom
# D: arrays used first, then strings was faster and cleaner
# A: turn number into array, see if reverse is ==

def palindromic_number?(number)
  number.to_s == number.to_s.reverse
end

# Examples:
puts palindromic_number?(34_543) == true
puts palindromic_number?(123_210) == false
puts palindromic_number?(22) == true
puts palindromic_number?(5) == true
