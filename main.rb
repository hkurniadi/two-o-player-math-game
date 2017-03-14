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
      num_of_players.times do |number|
        @players.push(Player.new(number + 1))
      end
      puts "All players #{@players}"
    end

    def game_over?
      @players.any? { |player| player.lives == 0 }
    end

    def start
      puts "game started"
    end
  end
end

if $0 == __FILE__
  MathGame::Game.new(2).start
end
