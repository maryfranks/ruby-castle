require_relative 'pack.rb'

class Player

  INITIAL_HEALTH = 20

  attr_accessor :name, :health, :max_health, :level, :pack

  def initialize(name)
    @name = name
    @health = INITIAL_HEALTH
    @max_health = INITIAL_HEALTH
    @level = 0
    @pack = Pack.new
  end

end
