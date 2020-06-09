# Sum or Product of Consecutive Integers

# Prob: ask user for pos int, ask for an 's' or 'p'
#   calculate the sum or prod of all nums up to provided
#   int according to supplied 'p' or 'd'
# Input is int, output is string with ints in it

# Example:
#   >> Please enter an integer greater than 0: 5
#   >> Enter 's' to compute the sum, 'p' to compute the product. s
#   The sum of the integers between 1 and 5 is 15.

# Datastructure: loops

# Algorithm: ask for int and save it, as for s or p, if statement
#   controls which process to run, calc sum or prod (0..num), print outputs

# Further exploration: solve with Enumerable#inject instead

puts "=> Please enter an integer greater than 0:"
number = gets.chomp.to_i

loop do
  puts "=> Enter 's' to compute the sum, 'p' to compute the product."
  operation = gets.chomp.downcase
  if operation == 's'
    sum = (1..number).inject(:+)
    puts "The sum of the integers between 1 and #{number} is #{sum}."
    break
  elsif operation == 'p'
    product = (1..number).inject(:*)
    puts "The product of the integers between 1 and #{number} is #{product}."
    break
  else
    puts "Not a valid input, please try again."
  end
end



