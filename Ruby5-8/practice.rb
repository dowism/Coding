userclasses = Hash.new("No HW")

while false
puts "What classes do you have? Type done when done"
  userinput = gets.chomp

    #if statement that checks if the user typed in done
    break
  end
  userclasses[userinput]="No HW"
