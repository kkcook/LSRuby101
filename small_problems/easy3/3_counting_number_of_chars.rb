# Counting the Number of Characters

# Problem: ask user for string, return number of chars, not spaces
# Input string, output int
# Example: Please write word or multiple words: walk
#   output: There are 4 characters in "walk".
# DS: arrays
# Alg: get rid of spaces (split? chars?), return count

puts "=> Enter a word or phrase:"
input = gets.chomp

chars = input.delete(' ').size

puts "=> There are #{chars} characters in \"#{input}\"."
