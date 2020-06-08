# How big is the room?
# Build a program that asks a user for the length and width of a room in meters 
#   and then displays the area of the room in both square meters and square feet.
# Note: 1 square meter == 10.7639 square feet
# Input/output: ints
# Datastructure: integer math

puts "Enter the length of the room in meters:"
length = gets.chomp.to_i

puts "Enter the width of the room in meters:"
width = gets.chomp.to_i

area = length * width
imperial_area = (area * 10.7639).to_i

puts "The area is #{area} square meters (#{imperial_area} square feet)."
