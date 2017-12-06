require "./MathGame/game_space"
require "./MathGame/player"

current_game = MathGame::GameSpace.new

until current_game.game_over? do
  puts "#{current_game.current_player.name}'s turn!"
  puts "> "
  current_game.ask_question
  gets.chomp

end
