# this class will be used to generate the the game mechanics
# this class needs to keep track of the game start, scores, who wins, and the turns

class Game
  def initialize(name)
    @name = rand(1...20)
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
  end

  def start
    puts "New game initialized. Welcome #{@player1.name} and #{@player2.name}"
    turn
  end
  
  def check_stats
    puts "Player 1: #{@player1.lives}/3 lives vs Player 2: #{@player2.lives}/3 lives"
  end

  def win(player)
    puts "#{player.name} wins! Still had #{player.lives}/3 lives!"
    puts '-------GAME-OVER-------'
    puts 'Peace!'
    exit(0)
  end

  def score_check
    if @player1.is_dead
      win(@player2)
    elsif @player2.is_dead
      win(@player1)
    end
  end

  def turn
    @player1.new_question
    score_check
    @player2.new_question
    score_check
    check_stats
    puts '-------NEW-TURN-------'
    turn
  end
  
end