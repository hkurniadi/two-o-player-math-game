# Question class should contain all the questions to be asked and their answers
module MathGame
  class Question
    attr_reader :current_question, :current_answer
    def initialize
      questions = [
        { q: "what does 9 minus 3 equal?", a: 6 },
        { q: "what does 2 plus 6 equal?", a: 8}
      ]
      index = rand(questions.length)
      # puts "here is your question
      @current_question = questions[index][:q]
      @current_answer = questions[index][:a]
      # puts @current_question
    end
  end
end
