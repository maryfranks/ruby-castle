require_relative 'weapon.rb'

class Broom < Weapon

  attr_accessor :name, :strength, :sturdy, :description

  def initialize

    super

    @name = "Broom"
    @strength = 1
    @sturdy = false
    @description = "A broom, better for sweeping than defending yourself but hey, it's better than nothing."

  end

end
