module MathGame
  # Question class should contain all the questions to and their answers
  class Question
    attr_reader :question

    def initialize
      random_number = 2.times.map { 1 + rand(20) }
      @question = "What does #{random_number[0]} + #{random_number[1]} equal?"
      @answer = random_number[0] + random_number[1]
    end

    def check_answer(answer)
      @answer == answer
    end
  end
end
