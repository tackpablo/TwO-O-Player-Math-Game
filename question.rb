# this class will be used to generate the questions 
# this class needs the questions, the answer and whether the question is correct

class Question
  attr_reader :number1, :number2

  def initialize
    @number1 = rand(1..20)
    @number2 = rand(1..20)
    @answer = @number1 + @number2
  end

  def ask_q(name)
    puts "#{name}: what does #{number1} plus #{number2} equal?"
  end

  def check_answer?(input)
    @answer == input
  end

end