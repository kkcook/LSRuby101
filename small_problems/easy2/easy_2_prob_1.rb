# frozen_string_literal: true

# How old is Teddy (between 20 and 200)?
# Further exploration: make it a method that defaults to Teddy w/out name

def print_age(name = 'Teddy')
  puts "#{name} is #{rand(20..200)} years old today!"
end

print_age('Karissa')
print_age
