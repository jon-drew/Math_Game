# This is the main entrypoint into the program
# It requires the other files/gems that it needs

require 'pry'
require './Player'
require './Question'

Player1 = Player.new("Player1", 3)
Player2 = Player.new("Player2", 3)


class Game
  def initialize()
    @current_player = Player1
  end

  def change_player()
    if @current_player == Player1
      @current_player = Player2
    else
      @current_player = Player1
    end
  end

  def run
    while Player1.points > 0 && Player2.points > 0 do
      newQuestion = Question.new
      puts "#{@current_player.username}: #{newQuestion.question_string}"
      answer = gets.chomp.to_i

      if answer == newQuestion.answer
        puts "YES! You are correct."
        puts "P1: #{Player1.points}/3 vs P2: #{Player2.points}/3"
        change_player()
      else
        puts "Seriously? No!"
        @current_player.points -= 1
        puts "P1: #{Player1.points}/3 vs P2: #{Player2.points}/3"
        change_player()
      end
    end
    puts "#{@current_player.username} wins with a score of #{@current_player.points}/3"
  end
end


game = Game.new
game.run