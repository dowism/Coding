=begin
in this file you will be telling the user about their surroundings.

1. the person fell into a maze, so you must inform them of that
2. ask the person which direction they would like to go: N,E,S,W
3. Then, based on their choice you are going to print
"#{their_choice}, good choice, you have met the knights who say ni!"
4. if the person does not choose a direction correctly, warn them that they
  have not correctly chosen a direction.


=end




puts "Holy giraffes! You fell into a maze!"
print "Where to? (N, E, S, W): "
direction = gets.chomp
  puts "#{direction}, you say? A fine choice!"
if direction == "N"
  puts "You are in a maze of twisty little passages, all alike."
elsif direction == "E"
  puts "An elf! And his pet ham!"
elsif direction == "S"
  puts "A minotaur! Wait, no, that's just your reflection."
elsif direction == "W"
  puts "You're here, wherever here is."
else
  puts "Wait, is that even a direction?"
end
