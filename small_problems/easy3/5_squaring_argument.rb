# Write method that squares an argument
# Example: square(-8) == 64

def multiply(a, b)
  a * b
end

def square(num)
  multiply(num, num)
end

def power(num, power)
  if power == 0
    return 1
  else
    num * (power(num, power - 1))
  end
end

puts square(-8) == 64
puts power(2, 3)