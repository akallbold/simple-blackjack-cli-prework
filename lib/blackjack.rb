# require 'pry'

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = rand(1..11)
  return card
end

def display_card_total(card)
  puts "Your cards add up to #{card}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # prompt_user
  user_input = gets.chomp
  user_input
end

def end_game(sum)
  puts "Sorry, you hit #{sum}. Thanks for playing!"
end

def initial_round
  sum= deal_card + deal_card
  display_card_total(sum)
  sum
end

def hit?(initial_round)
  prompt_user

# binding.pry
  if get_user_input == "h"
    puts initial_round + deal_card
  else get_user_input != "s" || get_user_input != "h"
    invalid_command
  end

  display_card_total(initial_round)

end

# hit?(10)

def invalid_command
puts "Please enter a valid command"
prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
