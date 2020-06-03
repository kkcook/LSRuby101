# P: write a method that takes a string and an int and prints string int times
# E: what if given a zero or neg number? what if empty string or string with weird chars?
# D: Input is string and int, output is string(s)
# A: Loop int times and puts string

def repeater(string_to_repeat, num)
    num.times {puts string_to_repeat}
end

repeater("hi", 8)