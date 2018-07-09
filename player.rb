class Player

  INITIAL_HEALTH = 20
  PACK_SIZE = 5

  attr_accessor :name, :health, :max_health, :level, :pack, :pack_size

  def initialize(name)
    @name = name
    @health = INITIAL_HEALTH
    @max_health = INITIAL_HEALTH
    @level = 0
    @pack = []
    @pack_size = PACK_SIZE
  end

end
