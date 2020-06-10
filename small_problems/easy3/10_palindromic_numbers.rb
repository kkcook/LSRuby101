# Palindromic Numbers

# P: Write a program that tells if number is palindrome
# Examples at bottom
# D: arrays
# A: turn number into array, see if reverse is ==

def palindromic_number?(number)
  num_array = number.digits
  num_array == num_array.reverse
end



# Examples:
puts palindromic_number?(34543) == true
puts palindromic_number?(123210) == false
puts palindromic_number?(22) == true
puts palindromic_number?(5) == true