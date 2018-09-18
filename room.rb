class Room

  attr_reader :size, :objects, :enemies, :dangers, :clues
  attr_accessor :description

  def initialize(size)
    @size = size
    @objects = [] # anything that can go in your pack
    @enemies = [] # enemies can attack you before you look around sometimes, plus you fight them
    @dangers = [] # dangers you usually blunder into and they can't be fought
    @clues = [] # aren't like other items, they help you figure out how to get out of the castle and are added to the instructions
    @description = ""
  end

  def add_objects(object)
    @objects.push(object)
  end

  def add_enemies(enemy)
    @enemies.push(enemy)
  end

  def add_dangers(danger)
    @dangers.push(danger)
  end

  def add_clues(clue)
    @clues.push(clue)
  end

  def look_around
      puts "Over in the corner you see a #{@objects.first.name}! Hey this could be good!"
      @objects.first.name
      puts "Maybe you should keep it just in case."
  end

end
