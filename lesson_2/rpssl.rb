# frozen_string_literal: true

VALID_CHOICES = %w[rock paper scissors lizard spock].freeze

win_conditions = { rock: %w[lizard scissors],
                   paper: %w[rock spock],
                   scissors: %w[paper lizard],
                   lizard: %w[spock paper],
                   spock: %w[scissors rock] }

choice = ''
player_score = 0
computer_score = 0
score = [0, 0]
winner = 'nobody'

def interpreted_abbreviations(input)
  if input == 's'
    loop do
      prompt('Did you mean spock or scissors?')
      clarification = gets.chomp
      return clarification if %w[scissors spock].include?(clarification)

      prompt('Invalid s word...')
    end
  elsif input == 'l'
    'lizard'
  elsif input == 'r'
    'rock'
  elsif input == 'p'
    'paper'
  end
end

def pick_winner(player, computer, win_conditions)
  if player == computer
    'nobody'
  elsif win_conditions[player.to_sym].include?(computer)
    'you'
  else
    'computer'
  end
end

def prompt(message)
  puts(">> #{message}")
end

loop do
  loop do
    prompt("Choose one #{VALID_CHOICES.join(', ')}")
    choice = gets.chomp
    choice = interpreted_abbreviations(choice)
    break if VALID_CHOICES.include?(choice)

    prompt('Not a valid choice, try again.')
  end

  computer_choice = %w[rock paper scissors lizard spock].sample
  winner = pick_winner(choice, computer_choice, win_conditions)

  prompt("The computer chose: #{computer_choice}.")
  prompt("You chose: #{choice}.")
  prompt("The winner is: #{winner}!")

  if winner == 'you'
    score[0] += 1
    prompt("The score is #{score[0]} to #{score[1]}.")
    if score[0] == 5
      prompt("You've won the game!!!")
      score[0] = 0
      score[1] = 0
    end

  elsif winner == 'computer'
    score[1] += 1
    prompt("The score is #{score[0]} to #{score[1]}.")
    if score[1] == 5
      prompt('The computer has won the game!!!')
      score[0] = 0
      score[1] = 0
    end
  end

  prompt('Would you like to play again? Type y to continue.')
  break unless gets.downcase.start_with?('y')
end
