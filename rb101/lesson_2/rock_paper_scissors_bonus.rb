VALID_CHOICES = %w(rock paper scissors lizard spock)

VALID_SHORTHAND = { 'r'  => 'rock',
                    'p'  => 'paper',
                    'sc' => 'scissors',
                    'l'  => 'lizard',
                    'sp' => 'spock' }

X_BEATS_Y = { case_1: {
                rock: 'scissors',
                paper: 'rock',
                scissors: 'paper',
                lizard: 'spock',
                spock: 'rock' },
              case_2: {
                rock: 'lizard',
                paper: 'spock',
                scissors: 'lizard',
                lizard: 'paper',
                spock: 'scissors' }}

def prompt(message)
  puts "=> #{message}"
end

def win?(player_1, player_2)
  X_BEATS_Y[:case_1][player_1.to_sym] == player_2 ||
    X_BEATS_Y[:case_2][player_1.to_sym] == player_2
end

def display_results(winner)
  if winner == 'player'
    prompt("You won!")
  elsif winner == 'computer'
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
  puts
end

def get_winner(player, computer)
  if win?(player, computer)
    winner = 'player'
  elsif win?(computer, player)
    winner = 'computer'
  else
    winner = 'tie'
  end
  winner
end

def get_choice
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = gets.chomp.strip
    VALID_SHORTHAND.each do |shorthand, full|
      if choice.start_with?(shorthand)
        choice = full
      end
    end
    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end
  choice
end

def play_again?
  prompt('Do you want to play again?')
  answer = gets.chomp.downcase
  answer.start_with?('y')
end

def play_round
  player_score = 0
  computer_score = 0
  match = 1
  until player_score == 3 || computer_score == 3
    prompt("Match #{match}:")
    choice = get_choice
    computer_choice = VALID_CHOICES.sample
    prompt("You chose #{choice}; Computer chose: #{computer_choice}")
    winner = get_winner(choice, computer_choice)
    player_score +=1 if winner == 'player'
    computer_score += 1 if winner == 'computer'
    display_results(winner)
    match +=1
  end
  prompt("At the end of that round you scored #{player_score}, "\
     "Computer scored #{computer_score}")
  if player_score > computer_score
    prompt("Congratulations! You won!")
  else
    prompt("Better luck next time...")
  end
end

# main program
loop do
  system('clear')
  play_round
  break unless play_again?
end
