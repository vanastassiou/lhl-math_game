module MathGame
  class GameSpace

    def initialize
      @players = [
        Player.new("Player 1"),
        Player.new("Player 2")
      ]
      @current_player = @players.first
    end

    attr_reader :current_player

    def game_over?
      @players.any? do |player|
        player.lives == 0
      end
    end

    def get_question
      addend1 = rand(1..20)
      addend2 = rand(1..20)
      @sum = addend1 + addend2
      "What is #{addend1} + #{addend2}?"
    end

    def submit_answer(player_input)
      if player_input == "#{@sum}"
        return self.sassy_response(true)
      else
        self.lose_life
        return self.sassy_response(false)
      end
    end

    def sassy_response(input)
      if input
        "Good job, buddy!"
      else
        "Nooooooooooo, whyyyyyyyyy"
      end
    end

    def lose_life
      @current_player.lose_life
    end


    def show_lives
      x = @players.first.lives
      y = @players.last.lives
      "Current score -- P1: #{x}/3 vs P2: #{y}/3"
    end


    def switch_active_player
      if @current_player == @players.first
        @current_player = @players.last
      else
        @current_player = @players.first
      end
    end

    def winner
      p1_lives = @players.first.lives
      p2_lives = @players.last.lives
      if p1_lives > p2_lives
        winner = @players.first
      else
        winner = @players.last
      end
    end

  end
end
