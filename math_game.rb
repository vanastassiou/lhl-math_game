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

  def game_over?
    @players.any? do |player|
      player.lives == 0
    end
  end


  def start_game
    until game_over? do
      puts "Are you ready #{current_player.name}?"
      gets
      # TODO ask a question and only award point if correct
      award_point
      swap_players
      print_scores
    end
  end


  def next_turn

  end


end
