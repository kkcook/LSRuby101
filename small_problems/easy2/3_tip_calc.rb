# frozen_string_literal: true

# Make a tip calc that accepts the bill and tip rate
# Output is tip amount and total bill

# Our solution prints the results as $30.0 and $230.0 instead of the more usual $30.00 and $230.00.
# Modify your solution so it always prints the results with 2 decimal places.

puts 'What is the total bill?'
bill = gets.chomp.to_f

puts 'What is the tip percentage?'
tip_percent = gets.chomp.to_f

tip = bill * tip_percent / 100
total = bill + tip

puts "The tip is: $#{format("%.2f", tip)}"
puts "The total bill is: $#{format("%.2f", total)}"

