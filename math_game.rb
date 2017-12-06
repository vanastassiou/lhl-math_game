require "./player"

class MathGame

  def initialize
    @players = [
      Player.new("Player 1"),
      Player.new("Player 2")
    ]
    @whose_turn = 0
  end

  def current_player
    @players[@whose_turn]
  end

  def lose_life
    current_player.lose_life
  end

  def game_over

  end


  def start_game

  end


  def next_turn

  end

end
