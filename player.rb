class Player
  # player info goes here

  INITIAL_HEALTH = 20

  attr_accessor :name, :health, :max_health, :level

  def initialize(name)
    @name = name
    @health = INITIAL_HEALTH
    @max_health = INITIAL_HEALTH
    @level = 0
  end

end
