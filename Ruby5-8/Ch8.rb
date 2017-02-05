citizens={
:aaron_a_aardvark => 'A van down by the river',
:alice_b_abracadabra => 'The green house with two chimneys',
:trady_blix => 'Mal Abochny',
:wherefor => 'One half mile due east!'
}

#Does citizens[:werefor] have truthyness?
if citizens[:wherefor]
  puts "Yep"
end

#does citizens[:werefor]==true?
puts citizens[:werefor]==true

#Let's say that the citizens hash actually had thousands of entries, ruby keeps track of all of it with ID numbers. Let's check it out, the first thing that Ruby keeps track of is 0.
puts false.object_id
puts 0.object_id
puts 1.object_id

#Here I want you to puts something from each of the following classes
#Fixnum,String,Hash,Float,Array,TrueClass,Falseclass, and NilClass. Nil is shown below.
puts nil.class

#Each of those classes have methods. Name some methods for a hash, and array, a string, an integer, wouldn't it be nice to define a class and have your own methods?
#Here we create a class that is initialized with a name, and a minstrel has two methods: Introduce, and sing.
class Minstrel
#This is the .new method, basically
  def initialize(name)
    @name = name
  end

  def introduce
    puts "My name is #{@name}!"
  end

  def sing
    puts 'Tralala!'
  end
end


seth=Minstrel.new("Seth")
seth.introduce
seth.sing
puts seth.class

#initialize this Rectangle class with two variables, length and width, then make a method that put the perimeter and another method that puts the area.
class Rectangle
end
