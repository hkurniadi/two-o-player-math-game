# Player class should have attributes that tell the player's number, player's lives, player's score. Each player can answer questions
module MathGame
  class Player
    attr_reader :lives, :name
    def initialize(number)
      @name = number + 1
      @lives = 3
    end
  end
end
