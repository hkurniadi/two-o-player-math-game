module MathGame
  # Game class should have attributes that tell the winner/loser,
  # define the game rule
  class Game
    def initialize(num_of_players)
      @players = []
      num_of_players.times do |number|
        @players << Player.new(number)
      end
      @current_player = 0
    end

    def winner
      @players.find { |player| player.alive? }
      # @players.find_index &:alive?
    end

    def game_over?
      @players.any? &:alive?
      # @players.any? { |player| player.alive? }
    end

    def live_players
      @players.where &:alive?
      # equivalent to
    end

    def current_player
      live_players[@current_round % @players.length]
    end

    def start
      puts 'Game Started!'
      @current_player = 0
      player1 = @players[@current_player]
      player2 = @players[@current_player + 1]

      loop do
        puts '---- NEW TURN ----'
        print "Player #{@players[@current_player].name}: "
        curr_question = Question.new
        puts curr_question.question
        players_answer = gets.to_i

        @players[@current_player].lose_lives if curr_question.check_answer(players_answer)

        puts "P1: #{player1.lives}\/3 vs P2: #{player2.lives}\/3"

        if game_over?
          puts '---- GAME OVER ----'
          puts "Player #{winner.name} won"
          break
        end

        @current_player.zero? ? @current_player += 1 : @current_player -= 1
      end
    end
  end
end
