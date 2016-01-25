VALID_CHOICES = %w(rock paper scissors lizard spock)

def greeting
  puts "Hello, welcome to Rock Paper Scissors Lizard Spock"
end

def prompt(message)
  puts("=> #{message}")
end

def display_result(player_choice, computer_choice)
  if (player_choice == 'rock' && computer_choice == 'scissors') ||
     (player_choice == 'rock' && computer_choice == 'lizard') ||
     (player_choice == 'scissors' && computer_choice == 'lizard') ||
     (player_choice == 'scissors' && computer_choice == 'paper') ||
     (player_choice == 'paper' && computer_choice == 'rock') ||
     (player_choice = 'paper' && computer_choice == 'spock') ||
     (player_choice == 'spock' && computer_choice == 'scissors') ||
     (player_choice == 'spock' && computer_choice == 'rock') ||
     (player_choice == 'lizard' && computer_choice == 'spock') ||
     (player_choice == 'lizard' && computer_choice == 'paper')
    puts "You win!"
  elsif (computer_choice == 'rock' && player_choice == 'rock') ||
        (computer_choice == 'spock' && player_choice == 'spock') ||
        (computer_choice == 'lizard' && player_choice == 'lizard') ||
        (computer_choice == 'paper' && player_choice == 'paper') ||
        (computer_choice == 'scissors' && player_choice == 'scissors')
    puts "It's a draw!"
  else (computer_choice == 'rock' && player_choice == 'scissors') ||
    (computer_choice == 'rock' && player_choice == 'lizard') ||
    (computer_choice == 'scissors' && player_choice == 'lizard') ||
    (computer_choice == 'scissors' && player_choice == 'paper') ||
    (computer_choice == 'paper' && player_choice == 'rock') ||
    (computer_choice = 'paper' && player_choice == 'spock') ||
    (computer_choice == 'spock' && player_choice == 'scissors') ||
    (computer_choice == 'spock' && player_choice == 'rock') ||
    (computer_choice == 'lizard' && player_choice == 'spock') ||
    (computer_choice == 'lizard' && player_choice == 'paper')
    puts "You lose!"
  end
end

greeting
loop do
  player_choice = ''

  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    player_choice = gets.chomp.downcase

    if VALID_CHOICES.include?(player_choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  puts "You chose: #{player_choice}; Computer chose #{computer_choice}"

  display_result(player_choice, computer_choice)
  sleep 3
  system 'clear'

  prompt("Do you want to play again?")
  answer = gets.chomp.downcase
  break unless answer.start_with?('y')
end
