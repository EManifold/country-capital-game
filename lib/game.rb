class Game
  attr_reader :score, :rounds, :questions

  def initialize
    @score = 0
    @rounds = 0
    @questions = []
    @answers = []
  end

  def question(question)
    @question = question
    @questions << @question
  end

  def answer(answer)
    @answer = answer
    @answers << @answer
  end

  def result
    @rounds += 1

    if @answer == @question[1]
      @score += 1
    end
  end

end
