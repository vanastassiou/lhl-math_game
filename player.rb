class Player

# Each player must have an identity and a score value
  def initialize(name)
    @name = name
    @score = 0
  end

  # Game needs to get/set name, get score
  attr_accessor :name
  attr_reader :score

  # Method to increment score
  def increment_score
    @score += 1
  end

end
