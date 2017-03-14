# Turn class should keep track of the player's turn
module MathGame
  class Turn
    def initialize(current_player)
      puts "---- NEW TURN ----"
      print "Player #{current_player}: "
    end

    def ask_question
      @question = Question.new
      puts @question.current_question
    end

    def get_answer
      answer = gets.to_i
      # puts "the answer is #{@question.current_answer}"
      # puts "answer is #{answer.class}"
      if answer == @question.current_answer
        # puts "it's correct!"
        true
      else
        # puts "it's false :("
        false
      end
    end
  end
end
