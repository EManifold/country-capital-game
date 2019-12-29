class Game
  attr_reader :score, :rounds

  def initialize
    @score = 0
    @rounds = 0
  end

  def question(question)
    @question = question
  end

  def answer(answer)
    @answer = answer
  end

  def result
    if @question == @answer
      @score += 1
      @rounds += 1
      true
    end
  end

end
