# Class to create player objects

require './question'

class Player

  attr_accessor :name, :number_of_lives, :score

  def initialize(name)
    @name = name
    @number_of_lives = 3
  end


  def display_question
    question = Question.new
    question.generate_question(name)
    @player_input = $stdin.gets.chomp.to_i
    if (question.check_sum(@player_input))
      puts "YES! You are correct."
    else
      @number_of_lives -= 1
      puts "Seriously? The answer is incorrect."
    end
  end

end