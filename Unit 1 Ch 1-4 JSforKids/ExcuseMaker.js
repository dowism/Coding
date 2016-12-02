/*
Make a function that randomly selects from a list of excuses.
Here is an example below
*/

var excuseExample = function (){
  excuses=["I am too tired","Today is a rest day", "I am too hungry","I am vegetarian"];
  randomNumber=Math.floor(Math.random()*3)
  console.log(excuses[randomNumber]);
}
