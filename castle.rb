require_relative 'player.rb'
require_relative 'pack.rb'
require_relative 'broom.rb'

class Castle
  # where the main game lives
  def initialize
    name = self.new_player
    @player = Player.new(name)
    @alive = true
    self.setup
    self.main
  end

  def new_player
    puts "What is your name"
    name = gets.chomp
    puts "Hello #{name}"
    return name
  end

  def main
    puts "Welcome to the castle #{@player.name}!"
    puts "Oh no you're trapped!"
    while @alive == true
      puts "what do you want to do? stay or go home"
      choice = gets.chomp
      if choice == "stay"
        puts "The castle is scary"
      elsif choice == "go home"
        @alive = false
      else
        puts "You have two choices, stay or go home"
      end
    end
    puts "game over"
  end

  def setup
    # adds things to the pack and adjusts anything for the player - right now a broom
    broom = Broom.new
    @player.pack.items.push(broom)
  end

end
