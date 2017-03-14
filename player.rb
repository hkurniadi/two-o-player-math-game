# Player class should have attributes that tell the player's number, player's lives, player's score. Each player can answer questions
class Player
  attr_reader :lives
  def initialize(number)
    @name = number
    @lives = 3
  end
end
