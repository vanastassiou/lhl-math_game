require "./player"

class MathGame

  def initialize
    @players = [
      Player.new("Player 1"),
      Player.new("Player 2")
    ]
    @whose_turn = 0
  end

end
