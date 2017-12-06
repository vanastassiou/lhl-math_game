class Player

# Each player must have an identity and a score value
  def initialize(name)
    @name = name
    @lives = 20
  end

  # Game needs to get/set name, get score
  attr_accessor :name
  attr_reader :lives

  # Method to increment score
  def lose_life
    @lives -= 1
  end

end
