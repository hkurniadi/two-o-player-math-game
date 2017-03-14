require_relative 'player'
require_relative 'question'
require_relative 'game'

# Extracting Nouns for Classes
# Player, Question, MathGame

if $0 == __FILE__
  Game.new(2).start
end
