=begin
Now that we learned some methods for arrays we will be doing the same for hashes. Again, hashes are like arrays but organized by name rather than number. We will be practicing the following methods.
.empty?
.length
.has_key?(key_name)
.has_value?(value_name)
You might be able to guess what some of these do but we are going to practice them to see how they work in practice. We will also be making a new program using some of these ideas after we learn about them.
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
At least two of your values should be an array multiple datatypes long.
=end



=begin
1. Write four lines of code using the methods above that will respond true. You can set it equal to a variable or integer. Make sure it runs in terminal.
2. Write code that will find the length of your hash.

=end

adventures.has_key?(:epic_missions)
!adventures.empty?
adventures.length==4
adventures[:numberOfMFDescents]==18




=begin
In this last section you will write a method that will put out certain values in your hash.
1. write a loop that puts all the keys
2. write a loop that puts only the values

=end

=begin
Finally, determine what this code does WITHOUT running it and answer this question:
Why is the kind_of? method necessary for this Hash?
=end

adventures = {
  epic_missions:["Middle Cherry","Chamberlains"],
  numberOfMFDescents:18,
  gearRequired:["Kayak","Helmet","Safety Gear","pfd","paddle","sprayskirt","throwbag"],
  bestPartners:["Louis","Darin","Carson"]
}


adventures.each do |key,value|
  puts "#{key}:"
  if value.kind_of?(Array)
    value.each do |item|
      puts item
    end
  end
end
