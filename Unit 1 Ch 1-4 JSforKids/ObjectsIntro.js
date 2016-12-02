/*
here you will make an object that contains
information about your friends.
make three objects of your friends,
identify whichever keys you want,
don't forget the commas!!!
*/


//make your friends
var nathan = {
  name:"Nathan",
  glasses:true,
  grade:18,
  sports:["Ultimate","Running","Whiffle Ball"],
  style:"Cool Nerd"

};

var mickey = {
  name:"Mickey",
  glasses:false,
  grade:16,
  sports:["Wheelchair Basketball","Ultimate","Swimming"],
  style:"V neck, Jeans, and sweet kicks"
}

var corbin = {
  name:"Corbin",
  glasses: true,
  grade:17,
  sports:["Soccer","Weightlifting","Football"],
  style:"Laid back"
}

//now make a list with your friends
friends = [nathan,mickey,corbin];

/*
objects have the same functionality as arrays with
regard to indexing, so you can use [] to parse them.
now identify what each of the following outputs
will be and how they were accessed, try to do this
without typing it into the console, then check it

corbin.name
corbin.sports[2]
nathan
friends[1].name
friends[0].sports[2]

Review questions:
Write the command I need in order to acces the following
1. mickeys grade

2. Corbins second sport

3. my first friends

4. create a friend object with the only one key "diet" set to vegan

5. Change corbins style to "SoCal suave"

your homework is to make your own list of friends with a unique
attributes. One attribute must be a number, one a boolean,one
list, and one a string.

*/
