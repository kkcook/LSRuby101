# frozen_string_literal: true

# Searching 101

# Prob: ask user for 6 numbers then tell them if 6th num is present in first 5
# Input/output: input 6 nums, output strings with boolean
# Example given at the bottom
# Datastructure: array for initial outputs, array for inputs
# Alg: Write loop for prompts, put inputs into array, ->
#   .include? to see if 6 is in the fist 5

prompt_list = %w[1st 2nd 3rd 4th 5th last]
user_inputs = []

6.times do |idx|
  puts "=> Enter the #{prompt_list[idx]} number:"
  user_inputs[idx] = gets.chomp.to_i
end

last_number = user_inputs.pop

if user_inputs.include?(last_number)
  puts "The number #{last_number} appears in #{user_inputs}."
else
  puts "The number #{last_number} does not appear in #{user_inputs}."
end

# Example:
# ==> Enter the 1st number:
# 25
# ==> Enter the 2nd number:
# 15
# ==> Enter the 3rd number:
# 20
# ==> Enter the 4th number:
# 17
# ==> Enter the 5th number:
# 23
# ==> Enter the last number:
# 17
# The number 17 appears in [25, 15, 20, 17, 23].
