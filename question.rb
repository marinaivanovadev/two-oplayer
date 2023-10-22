class Question
  attr_reader :answer

  def initialize

    @number1 = rand(1..20)
    @number2 = rand(1..20)
    @answer = @number1 + @number2

  end

  def generate_question
    puts "What does #{@number1} plus #{@number2} equal?"
  end

  def answer_question(player_answer)
    if player_answer.to_i == @answer
      puts "Yes! You are correct."
    else
      puts "Seriously? No!"
      reduce_lives
    end
  end
end