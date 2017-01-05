=begin
you are going to write a program that keeps track of a users hw.

=end

classes = Hash.new("NO HW")

puts "You are going to be keeping track of your HW using this program \n
when you are done with any task type done and you will move onto the next task"
until false
  puts "Add a class"
  userinput = gets.chomp
  if userinput == "done"
    break
  end
  classes[userinput]=[]
  puts "You now have #{classes}"
end

  puts "Now you are going to put in what HW you have for your class"
classes.each do |session,hw|
  puts "In #{session} write your HW"
  classhw = gets.chomp
  classes[session]=classhw
  puts "Your hw in #{session} is to do #{classhw}"
end
