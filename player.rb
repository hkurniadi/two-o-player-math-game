module MathGame
  # Player class have attributes that tell the player's number, player's lives.
  # Each player can answer questions
  class Player
    attr_reader :lives, :name
    def initialize(number)
      @name = number + 1
      @lives = 3
    end

    def lose_lives
      @lives -= 1
      @lives = 0 if @lives < 0
    end

    def alive?
      @lives > 0
    end
  end
end
