require_relative 'player'
require_relative 'question'
require_relative 'turn'

# Extracting Nouns for Classes
# Player, Question, MathGame, Turns

# MathGame class should have attributes that tell the winner/loser, define the game rule
module MathGame
  class Game
    def initialize(num_of_players)
      @players = []
      # if @players.length == 2
      #   puts "Sorry, max player reached"
      # end
      num_of_players.times do |number|
        @players.push(Player.new(number + 1))
      end
      @current_player = 0
      # puts "All players #{@players}"
    end

    def game_over?
      @players.any? { |player| player.lives.to_i == 0 }
    end

    def start
      player1_lives = @players[@current_player].lives
      player2_lives = @players[@current_player+1].lives
      puts "Game Started!"
      loop do
        new_turn = Turn.new(@current_player+1)
        new_turn.ask_question
        result = new_turn.get_answer
        # answer = gets
        # puts "Your answer: #{answer}"
        if result == true
          puts "P#{@current_player+1}: #{player1_lives}\/3 vs P#{@current_player+2}: #{player2_lives}\/3"
        else
          player1_lives -= 1
          puts "P#{@current_player+1}: #{player1_lives}\/3 vs P#{@current_player+2}: #{player2_lives}\/3"
        end
        if player1_lives == 0 || player2_lives == 0
          puts "---- GAME OVER ----"
          puts "Good Bye!"
          break
        end

        puts @current_player
        if @current_player == 0
          @current_player += 1
        else
          @current_player -= 1
        end
      end
    end
  end
end

if $0 == __FILE__
  MathGame::Game.new(2).start
end
