=begin
Now that we learned some methods for arrays we will be doing the same for hashes. Again, hashes are like arrays but organized by name rather than number. We will be practicing the following methods.
.empty?
.length
.has_key?(key_name)
.has_value?(value_name)
You might be able to guess what some of these do but we are going to practice anyhow. We will also be making a new program using some of these ideas after we learn about them.
=end


movies = {
  favorited:["Fight Club","Super Troopers"],
  disliked:["The Lobster"],
  pixar:["Finding Dory","The incredible"]
}

cartoons = Hash.new("Not worth the time")

one = movies.empty?
two = cartoons.empty?
three = movies.length
four = cartoons.length
five = movies.has_key?("favorited")
six = movies.has_key?(:favorited)

#Run the code above in irb and answer the following questions
#1. How is the syntax of what comes out of the irb console different than what you put in when you make a Hash? Use the movies hash to explain. When a : is used, it means it is a symbol instead of a string.
#2. what is stored in each of the variables one through six above? explain why.

=begin

=end


=begin
In the next section you are going to make a hash like movies above. You need at least 4 key value pairs. The hash can be about anything you want.
Atleast two of your values should be an array multiple datatypes long.
=end




=begin
1. Write some code that will respond true when asking if it has a certain key. You can set it equal to a variable. Make sure it runs in terminal.
2. Write code that will find the length of your hash.

=end







=begin
In this last section you will write a method that will put out everything in your hash. First, you need to
write a method that will find the key-value pairs with lengths of 2 or more.
Then you will write a for loop that will access those key-value pairs and then put out every value.
=end
