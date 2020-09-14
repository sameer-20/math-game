# Class to create question objects

class Question

  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @sum = @num1 + @num2
  end

  def generate_question(name)   
    puts "#{name}: What is #{@num1} plus #{@num2}?"
  end

  def check_sum(player_input)
    @sum == player_input
  end

end
