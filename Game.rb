class Game
  attr_accessor :current_player

  Player1 = Player.new("Bob", 3)
  Player2 = Player.new("Joe", 3)

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
end