# frozen_string_literal: true

# Greeting a user

# P: Write a program that greets a user.
#   If the user ends their name in a ! asky why yelling.
# Input/output: strings
# Example given in problem
# Datastructure: just strings
# A: Ask for a name, if last char in name is ! use special prompt

puts '=> What is your name?'
name = gets.chomp

if name[-1] == '!'
  puts "HELLO #{name.chop.upcase}. WHY ARE WE YELLING?!"
else
  puts "Hey, #{name}."
end

# Example:
# What is your name? Bob!
# HELLO BOB. WHY ARE WE SCREAMING?
