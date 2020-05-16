# frozen_string_literal: true

# ask the user for two inputs
# ask the user for the operator
# output the operation result
require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

def prompt(message)
  puts ">> #{message}"
end

def is_integer?(number)
  number.to_i.to_s == number
end

def is_float?(num)
  num.to_f.to_s == num
end


def number?(num)
  is_integer?(num) || is_float?(num)
end


prompt(MESSAGES['welcome'])

name = ''
loop do
  name = gets.chomp
  break unless name.empty?

  prompt(MESSAGES['valid_name'])
end

puts "Hello, #{name.capitalize}."

loop do # main loop
  input1 = nil
  loop do
    prompt(MESSAGES['first_num'])
    input1 = gets.chomp
    break if number?(input1)

    prompt(MESSAGES['error'])
  end

  input2 = nil
  loop do
    prompt(MESSAGES['second_num'])
    input2 = gets.chomp
    break if number?(input2)

    prompt(MESSAGES['error'])
  end

  operator = ''


  prompt(MESSAGES['operator_prompt'])

  operator_to_message = ''
  loop do
    operator = gets.chomp.to_i

    if [1, 2, 3, 4].include?(operator)
      result = case operator
               when 1
                 operator_to_message = 'Adding'
                 input1.to_f + input2.to_f
               when 2
                 operator_to_message = 'Subtracting'
                 input1.to_f - input2.to_f
               when 3
                 operator_to_message = 'Mulitplying'
                 input1.to_f * input2.to_f
               when 4
                 operator_to_message = 'Dividing'
                 input1.to_f / input2.to_f
               end

      prompt("#{operator_to_message} the numbers...")
      prompt("The result is #{result}")
      break

    else
      prompt(MESSAGES['invalid_op'])

    end
  end

  prompt(MESSAGES['continue'])
  answer = gets.chomp.downcase
  break unless answer.start_with?('y')
end

prompt('Goodbye!')
