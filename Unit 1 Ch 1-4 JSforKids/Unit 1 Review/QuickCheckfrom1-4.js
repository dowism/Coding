/*
Make two objects that have a name and  a list of powers, then a function that switches their lists, then prints out what powers they have */

var Stella ={
  name:"stella",
  powers:["Genius","Psychopathological Control"]
}

var Shelly={
  name:"Shelly",
  powers:["Super Strength","Shapeshifting"]
}


var switcher = function(one,two) {
  first=one.powers;
  second=two.powers;
  one.powers=second;
  two.powers=first;
  console.log(one.name + " now  has the power of " +one.powers[0] + " and " + one.powers[1] + " but " + two.name + " has the power of " +two.powers[0] + " and " + two.powers[1])
}






function newPerson(one,tw) {
  var one ={
  name:one,
  powers:tw
};
return one
}

Silly=newPerson("Silly",["Clown nose","Golf pants"])
