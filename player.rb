class Player 
  attr_reader :name, :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def to_s
    "#{name}: #{@lives}/3"
  end

  def answer_question(answer, correct_answer, other_player)
    if answer.to_i == correct_answer
      puts "Yes! You are correct."
    else
      puts "Seriously? No!"
      reduce_lives
    end
      puts "#{self} vs #{other_player}"
  end

  def reduce_lives
    @lives -= 1
  end

  def current_lives
    "#{self}"
  end
  
  def is_alive?
    @lives > 0
  end

end


