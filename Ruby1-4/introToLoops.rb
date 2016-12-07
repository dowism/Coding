=begin
a loop is something that can repeat and action as long as long
as a condition is true
an infinite loop is a loop that happens forever, and crashes your
computer, we try to avoid these.

below are some examples of loops


predict what each of the following loops does

=end

#this is a while loop
reply = ""

while reply != "yes"
  puts "do you love math?"
  reply = gets.chomp
end


i=1
while i<=10
  puts i**2
  i+=1
end

scared = true
while scared
  puts "I see you are still scared of the SAT.\nCalm down, the SAT doesn't matter THAT much\n are you still scared?"
  scared = gets.chomp
  if scared=="yes"
    scared=true
  elsif scared=="no"
    scared=false
  else
    puts "I can't tell whether you are still scared, please reply with yes or no"
  end
end


=begin
before moving on, think about == versus =. What is the difference?
what does += do?
what does \n do?


while is a great way to have a loop run while something is true, but what if
you wanted something to happen until something is true, here is how you would
write it
=end

scared = true
until !scared
  puts "I see you are still scared of the SAT.\nCalm down, the SAT doesn't matter THAT much\n are you still scared?"
  scared = gets.chomp
  if scared=="yes"
    scared=true
  elsif scared=="no"
    scared=false
  else
    puts "I can't tell whether you are still scared, please reply with yes or no"
  end
end

#now can you write the other two loops from above using until? try it out
#write your code here



=begin
reflection
write what a loop does in your own words:


the for loop is a bit more complicated, it basically says that *for* each part
of a list, do this thing to it. First I suppose we are going to have to learn
about a list, which is called an array. Here is the syntax: skigear=["skis","boots","poles"]
so that is an array of ski gear called *skigear*. now, for each of those in the list, we can do something to it


=end
#discuss with you partner what this loop will do
skigear=["skis","boots","poles"]
for gear in skigear
  puts "I have #{gear}"
end

#now make a list of things you need for school and print them to the console, start by making an array




=begin
okay, there is another way to go through a list, it is the *method* .each, remember a method is a
set of instructions that the computer already knows. here is how we would write that for the last
example


=end

skigear=["skis","boots","poles"]
skigear.each do |gear|
    puts "I have #{gear}"
  end

#What are the similarities to the last example? Now rewrite your last loop using this new notation.
