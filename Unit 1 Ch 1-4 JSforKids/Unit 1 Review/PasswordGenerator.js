/*
Basic:
You're challenge for today is to figure out what this script does.
When you understand what each snippet of code does, then comment
using the // operator to write in what the code does. An example
is below


Advanced:
On line 25 there is a section of code that does not follow the DRY(Don't Repeat Yourself)
principle of coding. use a for loop to shorten the code.

When you are done with the challenge that you choose, save this doc as a .txt and
submit.
*/

//Here is an example of how to comment
//these are all the possible inputs for a password
var possibleInputs = "ABCDEFGHIJKLMONPQRSTUVWXYZ1234567890?!@#$%^&*"

var password = function() {

  var password = [];
  //how could you rewrite this as a for loop?
  password.push(possibleInputs[characterPlace()])
  password.push(possibleInputs[characterPlace()])
  password.push(possibleInputs[characterPlace()])
  password.push(possibleInputs[characterPlace()])
  password.push(possibleInputs[characterPlace()])
  password.push(possibleInputs[characterPlace()])


  console.log(password.join(""));

}

var characterPlace = function() {
  return Math.floor(possibleInputs.length*Math.random());
}
