module MathGame
  class Player

    def initialize(name)
      @name = name
      @lives = 3
    end

    attr_accessor :name
    attr_reader :lives

    def lose_life
      @lives -= 1
    end

  end
end
