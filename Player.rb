class Player
  attr_accessor :name
  attr_accessor :points

  def initialize(name, points)
    @name = name
    @points = points
  end
end