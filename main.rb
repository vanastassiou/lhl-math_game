require "./MathGame/game_space"
require "./MathGame/player"

current_game = MathGame::GameSpace.new

puts "TEST YOUR MIGHT!"

until current_game.game_over? do
  current_question = current_game.get_question
  puts "#{current_game.current_player.name}'s turn!"
  puts "#{current_question}"
  print "> "
  player_input = gets.chomp
  response = current_game.submit_answer(player_input)
  puts response

  puts current_game.show_lives

  current_game.switch_active_player
end

winner = current_game.winner
puts "#{winner.name} wins with #{winner.lives} lives left!"
puts " ----- GAME OVER -----"
puts "Goodbye!"
