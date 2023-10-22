class Game 
  attr_reader :current_player 

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_player = @player1

  end

  def start
    puts "Welcome to the Math Game!"
    puts "Both players start with 3 lives."
    loop do
    puts "\n----- New Turn -----"
    puts "#{@current_player}:"

    # Create a new question
    question = Question.new
    puts question.generate_question

    # Get user input for the answer
    other_player = (@current_player == @player1) ? @player2 : @player1
    puts "Your answer: "
    answer = gets.chomp

    # Check the answer
    @current_player.answer_question(answer, question.answer, other_player)

    # Check if the game end
    break if game_over?
    next_turn
    end
    end_game
  end

  def next_turn
    @current_player = (@current_player == @player1) ? @player2 : @player1
  end

  def game_over?
    @player1.lives.zero? || @player2.lives.zero?
  end

  def end_game
    puts "\n----- Game Over -----"
    winner = [@player1, @player2].max_by(&:lives)
    loser = [@player1, @player2].min_by(&:lives)
    puts "#{winner.name} wins with a score of #{winner.current_lives}!"
    puts "Good bye!"
  end
end
