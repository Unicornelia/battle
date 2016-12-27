class Player

  INITIAL_HP = 100
  DAMAGE = 10

  attr_reader :name, :health_points

  def initialize(name)
    @name = name
    @health_points = INITIAL_HP
  end

  def receive_damage
    @health_points -= DAMAGE
  end
end
