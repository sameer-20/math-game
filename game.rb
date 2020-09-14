# Game Logic

require './player'
require './question'

class Game

  def initialize
    @player_1 = Player.new('Player 1')
    @player_2 = Player.new('Player 2')
  end


  def start
    puts "Are you ready to play the game? Answer yes/no."
    user_input = gets.chomp

    if (user_input == 'yes')
      puts "Let us start the game!"
      turn
    elsif (user_input == 'no')  
      puts "Get back if you wanna play the game."
    else 
      puts "Please enter the correct option."
    end
  end
  

  def turn
    @player_1.display_question
    if (!@player_1.number_of_lives == 0)
      display_result(@player_2) 
    end
    puts "P1: #{@player_1.number_of_lives}/3 vs P2: #{@player_2.number_of_lives}/3" 
    @player_2.display_question
    if (!@player_2.number_of_lives == 0)
      display_result(@player_1)
    end
    puts "P1: #{@player_1.number_of_lives}/3 vs P2: #{@player_2.number_of_lives}/3" 
    puts "----------- NEW TURN ------------"
    turn
  end

  def display_result(player)
    puts "#{player.name} wins with the score of #{player.number_of_lives}/3"
    puts '---------GAME-OVER--------'
    puts 'Good bye!'
    exit(0)
  end  

end