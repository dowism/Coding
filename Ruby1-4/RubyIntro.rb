puts "Hello there, What is your name?"
name = gets.chomp

puts "Very nice to meet you #{name}, we are going to do a few introductions here so that maybe you understand some code, and learn a little bit about your neighbors."

neighborOne = Hash.new

puts "Introduce yourself to the neighbor to your left, what is their name?"
neighborOne["name"]=gets.chomp

puts "How old are they?"
neighborOne["age"]=gets.chomp

puts "Now introduce yourself to your other neighbor, what is their name?"
neighborTwo=Hash.new
neighborTwo["name"]=gets.chomp

puts "And their age?"
neighborTwo["age"]=gets.chomp

puts "Now we know your neighbors a little, they are #{neighborOne["name"]}, who is #{neighborOne["age"]}, and #{neighborTwo["name"]}, who is #{neighborTwo["age"]} "
