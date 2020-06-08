# Bonus Calc
# Prb: write a method that takes an int and a bool, 
#   if bool is true the return val should be half of int arg
# Examples below
# Datastructure: integer math
# A: check if bool is true, return half of int if yes and 0 if false

def calculate_bonus(salary, receives_bonus)
  receives_bonus ? (salary/2) : 0
end



# Examples
puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000