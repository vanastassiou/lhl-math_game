module MathGame
  class GameSpace

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

    def ask_question

    end


    def lose_life
      @current_player.lose_life
    end


    def show_lives

    end


    def next_turn
      @current_player = @current_player + 1
    end

  end
end
