# This is the main entrypoint into the program
# It requires the other files/gems that it needs

require 'pry'
require './Player'
require './Question'
require './Game'

NewGame = Game.new
Player1 = Player.new("Bob", 3)
Player2 = Player.new("Joe", 3)

def run
  while Player1.points > 0 && Player2.points > 0 do
    newQuestion = Question.new
    puts "#{Game}: #{newQuestion.question_string}"
    answer = gets.chomp.to_i

    if answer == newQuestion.answer
      puts "YES! You are correct."
      puts "P1: #{Player1.points}/3 vs P2: #{Player2.points}/3"
      Game.change_player
    else
      puts "Seriously? No!"
      Game.current_player.points -= 1
      puts "P1: #{Player1.points}/3 vs P2: #{Player2.points}/3"
      Game.change_player
    end
  end
  puts "#{} wins with a score of #{}/3"
end

run()