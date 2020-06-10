# frozen_string_literal: true

# How big is the room?
# Build a program that asks a user for the length and width of a room in meters
#   and then displays the area of the room in both square meters and square feet.
# Note: 1 square meter == 10.7639 square feet
# Input/output: ints
# Datastructure: integer math

# Modify this program to ask for the input measurements in feet,
#   and display the results in square feet, square inches, and square centimeters.

SQFEET_TO_SQINCHES = 144
SQFEET_TO_CMSQ = 929.03

puts 'Enter the length of the room in feet:'
length = gets.chomp.to_f

puts 'Enter the width of the room in feet:'
width = gets.chomp.to_f

square_feet = length * width
square_inches = square_feet * SQFEET_TO_SQINCHES
cm_square = square_feet * SQFEET_TO_CMSQ

puts "The area is #{square_feet.round(2)} square feet, " \
     "#{square_inches.round(2)} square inches, and " \
     "#{cm_square.round(2)} centimeters squared."
