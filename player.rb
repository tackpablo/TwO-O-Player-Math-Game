# this class will be used to generate the players
# this class needs to keep track of the player, lives, whether they are dead, question for player, input/output

class Player
  attr_accessor :name, :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def lose_life
    @lives -= 1
  end

  def is_dead
    @lives == 0
  end

  def new_question
    new_q = Question.new
    new_q.ask_q(name)
    print '> '
    @user_answer = $stdin.gets.chomp
    if new_q.check_answer?(@user_answer.to_i)
      puts "YES! You are correct."
    else
      puts 'Seriously? NOPE!'
      lose_life
    end
  end
  
end

