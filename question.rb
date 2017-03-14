# Question class should contain all the questions to be asked and their answers
module MathGame
  class Question
    attr_reader :question, :answer
    def initialize
      questions = [
        { q: "what does 9 minus 3 equal?", a: 6 },
        { q: "what does 2 plus 6 equal?", a: 8}
      ]
      index = rand(questions.length)
      @question = questions[index][:q]
      @answer = questions[index][:a]
    end
  end
end
