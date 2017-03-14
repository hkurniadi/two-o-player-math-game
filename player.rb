# Player class should have attributes that tell the player's number, player's lives. Each player can answer questions
module MathGame
  class Player
    attr_reader :lives, :name
    def initialize(number)
      @name = number + 1
      @lives = 3
    end

    def lose_lives
      @lives -= 1
    end
  end
end
