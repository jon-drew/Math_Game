class Player
  attr_accessor :username
  attr_accessor :points

  def initialize(username, points)
    @username = username
    @points = points
  end
end