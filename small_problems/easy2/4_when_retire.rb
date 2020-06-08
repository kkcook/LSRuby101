# When will I retire?

# Prob: build a prog that asks age, desired retirement
#   year, and then outputs how long they have to work
# Input/output: ints
# Example given on LS
# Datastructure: integer math
# Alg: ask for age, then age of retirement, then display
#   "It's 2016. You will retire in 2056."
#   "You have only 40 years of work to go!"

puts "=> How old are you?"
age = gets.chomp.to_i

puts "=> What age do you want to retire at?"
retirement_age = gets.chomp.to_i

year = Time.now.year
years_to_retirement = retirement_age - age
retirement_year = year + years_to_retirement

puts "It's' #{year}. You will retire in #{retirement_year}."
puts "You have only #{years_to_retirement} years to go!"