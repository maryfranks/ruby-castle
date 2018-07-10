class Weapon

  attr_accessor :equipped, :can_go_in_pack, :broken 

  def initialize

    @equipped = false
    @can_go_in_pack = true
    @broken = false

  end

end
