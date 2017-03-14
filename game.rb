# Game class should have attributes that tell the winner/loser, define the game rule
module MathGame
  class Game
    def initialize(num_of_players)
      @players = []
      num_of_players.times do |number|
        @players.push(Player.new(number))
      end
      @current_player = 0
    end

    def winner
      @players.find_index { |player| player.lives.to_i > 0 }
    end

    def game_over?
      @players.any? { |player| player.lives.to_i == 0 }
    end

    def start
      puts "Game Started!"
      @current_player = 0
      player1 = @players[@current_player]
      player2 = @players[@current_player+1]

      loop do
        puts "---- NEW TURN ----"
        print "Player #{@players[@current_player].name}: "
        curr_question = Question.new
        puts curr_question.question
        players_answer = gets.to_i

        if players_answer != curr_question.answer
          @players[@current_player].lose_lives
          puts "P1: #{player1.lives}\/3 vs P2: #{player2.lives}\/3"
        else
          puts "P1: #{player1.lives}\/3 vs P2: #{player2.lives}\/3"
        end

        if game_over?
          puts "---- GAME OVER ----"
          puts "Player #{@players[winner].name} won"
          break
        end

        @current_player == 0 ? @current_player += 1 : @current_player -= 1
      end
    end
  end
end
