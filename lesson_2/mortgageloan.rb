# frozen_string_literal: true

# GET loan amount
# GET APR
# GET loan duration
# CALCULATE: monthly interest rate
# Calc loan duration
# Calc monthly payment
# m = p * (j / (1 - (1 + j)**(-n)))
require 'yaml'
MESSAGES = YAML.load_file('mortgagemessages.yml')

def error_message
  puts MESSAGES['error']
end

loan_amount = ''
loop do
  puts "Enter loan amount:"
  loan_amount = gets.chomp
  break if loan_amount.to_i.to_s == loan_amount || loan_amount.to_f.to_s == loan_amount

  error_message
end

apr = ''
loop do
  puts "Enter APR:"
  apr = gets.chomp
  break if apr.to_i.to_s == apr || apr.to_f.to_s == apr

  error_message
end

months_in_loan = ''
loop do
  puts "Enter loan duration (in months):"
  months_in_loan = gets.chomp
  break if months_in_loan.to_i.to_s == months_in_loan

  error_message
end

j = apr.to_f / 1200
l = loan_amount.to_f
n = months_in_loan.to_f

monthly_payment = l * (j / (1 - (1 + j)**(-n)))
puts "Your monthly payment will be: $#{monthly_payment.round(2)}"

