class Player

HP_POINTS = 100

  attr_reader :name, :hp_points

  def initialize(name)
    @name = name
    @hp_points = HP_POINTS
  end

  def receive_damage
    @hp_points -= 10
  end



end
