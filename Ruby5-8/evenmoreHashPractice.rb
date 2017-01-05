=begin
In this lesson you will take the scattered lines of
this code and reconstruct it into a program that does the following
1. tells the user what is going to happen
2. collects the users classes until they are done
3. collects the users HW for each class.
4. then allows the use to view their hw, change their hw, add a class, or quit.

Reflection questions
1. how do you store a value for a key in an object?
2. Why is the case method best here? compare with if/elif statements
3. why is the first loop started with until false? How does the user get out of that loop?
4. why do we use the .has_key? command in one of the cases?


There is one new method in this program: The case method.
you use it when there are a few different possibilities for a particular object, and for each possibility you want their to be a different action taken by the computer. So you tell the computer what object you are trying to evaluate and give a bunch of options for what to do depending on that that object is.

case object
when condition
  then something happens
when condition
  then something happens
when condition
  then something happens
when condition
  then something happens
end


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

until false

  puts "What do you want to do? \n Add a class: Type Add \n change HW: Type Change\n Quit: Type Quit\n To check you HW: Type check"
  userinput=gets.chomp
  case userinput

  when "add"
#add how they would add a class
    puts "Add a class"
    userinput = gets.chomp
    classes[userinput]=[]
    puts "You now have #{classes}"


  when "change"
#add how they would change the hw in a class, check to make sure the class exists first
    puts "Which class would you like to change HW in?"
    changeHW=gets.chomp
    if !classes.has_key?(changeHW)
      puts "That class does not exist"
    end
    if classes.has_key?(changeHW)
      puts "What is the HW in #{changeHW}:"
      newHW=gets.chomp
      classes[changeHW]=newHW
    end

  when "check"
    classes.each do |session,hw|
      puts "in #{session} you have #{hw}"
    end

  when "quit"
    #break out of this loop when they quit
    break

  end

end
