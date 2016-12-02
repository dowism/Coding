/*
generally, an if else statement controls code by evaluating a condition,
then doing something if that condition is true
if (condition) {
  do this
} else {
  if that is not true, do this
}
*/



//What will this code do? what is it checking for? is the condition true?

var name = "Nicholas";
console.log("Hello " + name);
if (name.length > 7) {
console.log("Wow, you have a REALLY long name!"); }
else {
console.log("Your name isn't very long.");
}

//rewrite the above code so that the condition for the if statement is false

//write an if statement that checks whether someone has their FIS license
//if they do, they print, congrats, you will be able to race
//if not, print, "You need to register in order to compete"

var FIS=0;
if (FIS) {
console.log("You are registered!");
} else {
console.log("You need to get your FIS license");
}

if (FIS==1) {
  console.log("You are registered again!");
} else {
  console.log("You need to get your FIS license");
}


//now for a new idea, the while loop, the while loop essentially says that
//while a certain condition is true, keep doing this thing. What does this do?

sheep=10
count=0
while (count<sheep) {
  console.log("You have counted " + count + " Sheep");
  count++
}
console.log("You have counted all the sheep");




//now let's practice for loops, let's write a loop that
//goes through a list and prints each one
skiList=["Helmet","ski socks", "tele bindings","Tele boots","Poles","Boots","Goggles"]
for (var i = 0; i < skiList.length; i++) {
  console.log(skiList[i]);
}

//write a for loop that prints each character of this variable
//remember if you type "for" then tab, it will create the structure for you
thisList="supercalifragilisticexpialidocious"
for (var i = 0; i < array.length; i++) {
  array[i]
}



//now look at this for loop
for (var i = 0; i < thisList.length; i++) {
  if(thisList[i]=="e"){
    console.log(i);
  }
}
