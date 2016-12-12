=begin
cd dropbox/coding/ruby1-4
ruby introToLogic.rb
In this script you will be learning about logic and flow control.
Flow control is anything that you use to direct the decisions that
the computer is making about input you are giving it. Logic is how
computers make decisions. Logical values are anything that results
in a true or false output.
let's try some in irb

here are your logical operators
< less than
> greater than
<= less than or equal to
>= greater than or equal to
&& and
|| or
! not
== is equal to
!= does not equal
5<6?

"a"<"b"?
"a">"b"?
What does this tell you about how less than is interpretted when it comes to characters?

"this"<"that"?
"this"?"that"?

Now let's explore && and ||. && means you need this and this. you need both for the statement
to be true. for example, to do math you need your brain and perseverance, you can't just have one.
|| means or, so to do math you need desmos or a graphing calculator, not both. Desmos || GraphingCalc.
But, if you have neither, you are not ready let's check it out.
=end
=begin
brain=true
perseverance=false
graphingCalc=true
desmos=false
puts "let's see if you are mentally ready for math!"
if brain&&perseverance
  puts "Yes, you have your brain and you are ready to persevere! You are ready for math"
elsif !brain
  puts "you forgot your brain, how did you do that?"
elsif !perseverance
  puts "You are going to have to know how to deal with frustration and disappointment in order to do math"
else
  puts "You gotta start over bud, you aren't bringing your A game"
end

puts "let's see if you are prepared!"
if graphingCalc||desmos
  puts "Yep, you are ready, you have the tools"
else
  puts "You are not ready"
end

=end
#make your own program that checks if you can ski, or videogame, or whatever.



=begin

Now, you are going to write a logical test to see if you are ready to ski
first you need to define some variables, which should be the name of things
that you wear when you ski

if you use && that means you need both things, if you use || that means you only
need one of them to be true

this program should print "You will be too cold" if you don't have enough gear,
it should print "You will be just right" if you have what you want
it should pring "You will be too hot" if you are wearing too much

you can type ife and press enter to setup your statement, but you might need more
elif statements

=end

=begin

#it is a cold day, you to have some good gear!
jacket=
buff=
downJacket=
helmet=
gloves=
mittens=
=end
