# Question class should contain all the questions to be asked and their answers
module MathGame
  class Question
    attr_reader :question, :answer

    def initialize
      random_number = 2.times.map{1 + rand(20)}
      @question = "What does #{random_number[0]} + #{random_number[1]} equal?"
      @answer = random_number[0] + random_number[1]
    end
  end
end
