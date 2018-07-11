require_relative 'castle.rb'

class App

  puts "You're on your way home from work, walking down the same street that you always walk down on the your usual route home. The sky starts to get dark; there's thunderstorm in the distance. You curse yourself. You knew there was a 30% chance of rain but you left your umbrella at home anyway. Out of the corner of your eye you see a bright flash of lightening. You turn towards the lightening and a giant castle is looming in a vacant lot across the street. You think to yourself, 'How did I not notice this giant castle before? I must be spending too much time on my phone.' You cross the street to get a better look. While you stand there in front of the drawbridge over the moat (that you swear was never there before), a giant raindrop lands on your head. 'Crap, my laptop is going to get soaked!' you think to yourself. 'Maybe I should check out this castle while I wait for the storm to end.' You aren't sure. You don't want your expensive new MacBook to get ruined. Apple care always seems to know if you get their stuff wet. But something about this castle is really unnerving. You ask yourself again, 'How long has this creepy castle been in this lot that you keep refering to as vacant?' The storm is moving closer, do you enter the castle? yes or no?"

  answer = gets.chomp

  if answer == "yes"

    castle = Castle.new

  elsif answer == "no"

    puts "The castle creeps you out. You turn and head for home, looking back over your shoulder at the creepy castle. You feel like it's calling you, beckoning you to enter. You can't help but sense danger. Thunder booms, closer this time. The thunder is so loud you don't hear the car. You trip over a root that has buckled the sidewalk. You think to yourself, 'Was there always a tree here?' as you fall on your face in the street. The driver of the car was playing with the GPS and didn't see you. As the Tesla drives over you, the driver exclaims 'this autopilot sucks'. You appreciate the irony of being run over by a smart car. You think to yourself 'I should have gone into the castle.' That is your last thought. You die alone in the road in front of the castle you still swear wasn't there the day before."
  else

    puts "A voice booms in the distance. 'Arrays start at 0,' the vortex reminds you. You realize it's a nightmare. You always have this nightmare. The zero index of the array descends upon you. Inside is a horror that only the residents of Dunwich could understand. Your mouth opens in a scream, it is the zero index of the array. "

  end

end
