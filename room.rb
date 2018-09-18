class Room

  attr_reader :size, :things, :enemies, :dangers, :clues, :description

  def initialize(size)
    @size = size
    @things = []
    @enemies = []
    @dangers = []
    @clues = []
    @description = []
  end

end
