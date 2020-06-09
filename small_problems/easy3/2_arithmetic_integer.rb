# Arithmetic Integer

# Problem: ask user for 2 ints, perform addition, subtraction, 
#   product, quotient, remainder, and power
# Example at bottom
# Datastructure: int math
# Alg: create array of operators, loop through

def prompt(message)
  puts "=> #{message}"
end

prompt('Enter the first number:')
first_num = gets.chomp.to_i

loop do
  prompt('Enter the second number:')
  second_num = gets.chomp.to_i

  break if second_num != 0
  prompt('Second number cannot be zero, please try again.')
end

prompt("#{first_num} + #{second_num} = #{first_num + second_num}")



# EXAMPLE
# ==> Enter the first number:
# 23
# ==> Enter the second number:
# 17
# ==> 23 + 17 = 40
# ==> 23 - 17 = 6
# ==> 23 * 17 = 391
# ==> 23 / 17 = 1
# ==> 23 % 17 = 6
# ==> 23 ** 17 = 141050039560662968926103