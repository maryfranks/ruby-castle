require_relative 'player.rb'
require_relative 'pack.rb'
require_relative 'broom.rb'
require_relative 'snack.rb'
require_relative 'room.rb'

class Castle
  # where the main game lives
  def initialize
    name = self.new_player
    @player = Player.new(name)
    @alive = true
    @main_menu = ["look around", "main menu", "give up", "instructions"]
    self.setup
    self.main
  end

  def new_player
    puts "You cross the drawbridge. The castle looks like something out of a horror movie but the thunder and lightening are getting closer. Now that you think about it, the storm seem ominous. Halfway across the drawbridge you see a sign that says 'free candy'.  You figure, if they're giving out free candy how bad could it be.  Maybe you just forgot it was halloween? Is it halloween you ask yourself?  After all you somehow missed the giant castle in the vacant lot. Halloween is really the best explanation...the castle must be a new haunted house. Now you're excited for the adventure, although is pretty sure it's April. Wasn't it April 5th when you left work half a hour ago? The time for reasonable thinking has passed. You're at the castle door. As you approach, the door opens on it own and you're greeted by a cool, if slightly foul smelling, breeze. 'This haunted house is awesome you think' as you walk into the dark entryway. To the left of the door is a quaint little table with a guest book. It's like a haunted bed and breakfast! How clever. The guest book is splattered with what you're going to assume is red wine. For a haunted castle house that you didn't even know was there, there are a lot of names in this guest book. You decide to add yours. You write:"
    name = gets.chomp
  end

  def main
    self.explore_entryway
    # main game loop
    while @alive == true
      risk_your_life
    end
    puts "game over"
  end

  def setup
    2.times do
      snack = Snack.new
      @player.pack.add_item(snack)
    end
  end

  def explore_entryway
    # build the entryway bit by bit here
    entryway = Room.new(1)
    entryway.description = "you're in the entryway"
    broom = Broom.new
    entryway.add_objects(broom)
    puts "As soon as you put the pen down you swear you hear a voice, it sounds like it's saying 'murder', but murder what? You take a step closer to the sound and you hear clearly - 'run #{@player.name}, before it's too late!' Something about the voice convinces you it isn't a haunted house after all. You turn to leave but the door is closed. It won't open, there isn't even a doorknob. What kind of asshole ghost warns you to leave after it's too late? Maybe it even closed the door on you. At any rate, you appear to be trapped, you might as well look around right? (yes/no)"
    answer = gets.chomp
    if answer == "yes"
      puts "looking around is usually a good idea. Start by looking in your pack. You might have something good in there."
      @player.examine_pack
      puts entryway.description
      entryway.look_around
      @player.pack.add_item(broom)
    elsif answer == "no"
      puts "You die a violent death from something you didn't see in a dark corner somewhere. You didn't make an effort to look around, the castle didn't make an effort to give you an interesting death. No one finds your body. No one is even looking for you. Everyone forgets you."
      @alive = false
    else
      puts "Your lack of basic comprehension makes me dubious that you'll survive the adventure. Luckily there's nothing in the room to kill you - you'd already be dead considering that you went staight to the guest book to sign in. Even the slowest of deaths would have had time to find you. You're going to look around now, and you should always look around when you enter a new room."
      entryway.look_around
      @player.pack.add_item(broom)
      @player.examine_pack
    end
    puts "It's always a good idea to keep looking around to make sure you've found everything there is to find, but hey, I can't make you do anything. You have endless amounts of options, being trapped in a creepy castle. If you want to look around again, type 'look around'. If you want to see what other options are available, type 'main menu'."
    while @player.level == 0 && @alive == true
      risk_your_life
    end
  end

  def print_main_menu
    puts "these are your options: #{@main_menu}"
  end

  def print_instructions
    puts "Oh, I don't know...maybe get out of this creepy castle?"
  end

  def risk_your_life
    puts "What would you like to try next?"
    choice = gets.chomp
    if choice == "main menu"
      print_main_menu
    elsif choice == "look around"
      puts "The castle is scary"
    elsif choice == "instructions"
      print_instructions
    elsif choice == "give up"
      @alive = false
    else
      main_menu
    end
  end

end
