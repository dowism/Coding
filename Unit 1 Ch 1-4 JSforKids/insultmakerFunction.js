/*
For this project you are taking the insultmaker and having it use functions to match the
DRY coding principle. DRY=Don't Repeat Yourself

*/



animals=["rhino","giraffe","macaque"]
fruit=["cumquats","cantaloupe","apricots"]
people=["mother", "best friend", "uncle"]


var randomizer = function(group){
  return group[Math.floor(3*Math.random())];
};

//your _____ was a ______ and your ________ smelled of _______

var insultMaker = function(part1, part2, part3, part4){
console.log("Your " + part1 + " was a " + part2
+ " and your " + part4 + " smelled of " + part3);
};

insultMaker(randomizer(people),randomizer(animals),randomizer(fruit),randomizer(people))

//how is this function different than the first?
var insultmaker2 = function(){
  console.log("Your " + randomizer(people) + " was a " + randomizer(animals) + " and your " + randomizer(people) + " smelled of " + randomizer(fruit));
  };

//make it a function, with the variables being the arguments passed to
