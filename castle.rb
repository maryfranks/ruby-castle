require_relative 'player.rb'
require_relative 'pack.rb'
require_relative 'broom.rb'
require_relative 'snack.rb'

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
    puts "You cross the drawbridge. The castle looks like something out of a horror movie but the thunder and lightening are getting closer. Now that you think about it, the storm seem ominous. Halfway across the drawbridge you see a sign that says 'free candy'.  You figure, if they're giving out free candy how bad could it be.  Maybe you just forgot it was halloween? Is it halloween you ask yourself?  After all you somehow missed the giant castle in the vacant lot. Halloween is really the best explanation...the castle must be a new haunted house. Now you're excited for the adventure, although is pretty sure it's April. Wasn't it April 5th when you left work half a hour ago? The time for reasonable thinking has passed. You're at the castle door. As you approach, the door opens on it own and you're greeted by a cool, if slightly foul smelling, breeze. 'This haunted house is awesome you think' as you walk into the dark entryway. To the left of the door is a quaint little table with a guest book. It's like a haunted bed and breakfast! How clever. The guest book is splattered with what you're going to assume is red wine. For a haunted castle house that you didn't even know was there, there are a lot of names in this guest book. You decide to add yours. You write:"
    name = gets.chomp
  end

  def main
    self.entryway
    # main game loop
    self.instructions
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
    2.times do
      snack = Snack.new
      @player.pack.add_item(snack)
    end
  end

  def entryway
    puts "As soon as you put the pen down you swear you hear a voice, it sounds like it's saying 'murder', but murder what? You take a step closer to the sound and you hear clearly - 'run #{@player.name}, before it's too late!' Something about the voice convinces you it isn't a haunted house after all. You turn to leave but the door is closed. It won't open, there isn't even a doorknob. What kind of asshole ghost warns you to leave after it's too late? Maybe it even closed the door on you. At any rate, you appear to be trapped, you might as well look around right? (yes/no)"
    answer = gets.chomp
    if answer == "yes"
      puts "looking around is usually a good idea. Start by looking in your pack. You might have something good in there."
      @player.examine_pack
      look_around("entryway")
    elsif answer == "no"
      puts "You die a violent death from something you didn't see in a dark corner somewhere. You didn't make an effort to look around, the castle didn't make an effort to give you an interesting death. No one finds your body. No one is even looking for you. Everyone forgets you."
      @alive = false
    else
      puts "Your lack of basic comprehension makes me dubious that you'll survive the adventure. Luckily there's nothing in the room to kill you - you'd already be dead considering that you went staight to the guest book to sign in. Even the slowest of deaths would have had time to find you. You're going to look around now, and you should always look around when you enter a new room."
      look_around("entryway")
      @player.examine_pack
    end
  end

  def look_around(room_type) # jason thinks I should put this shit in player
    if room_type == "entryway"
      puts "you're in the entryway"
      broom = Broom.new
      puts "Over in the corner you see a broom! Hey this could be good!"
      broom.describe_item
      puts "Maybe you should keep it just in case."
      @player.pack.add_item(broom)
    end
  end

  def main_menu
    puts "these are your options: look around, "
  end

  def instructions
    puts "game instructions should go here and you should be able to get back to them from the main menu"
  end


end
