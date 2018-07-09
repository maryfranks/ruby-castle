require_relative 'player.rb'

class Castle
  # where the main game lives
  def initialize
    name = self.new_player
    @player = Player.new(name)
    self.main_menu
  end

  def new_player
    puts "What is your name"
    name = gets.chomp
    puts "Hello #{name}"
    return name
  end

  def main_menu
    puts "Welcome to the castle #{@player.name}!"
  end

end
