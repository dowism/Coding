/*
This adventure must have three variables,
and an if/else if/else statement as shown below
You must use at least three logical operators from the list below
&& and
|| or (pipes)
! not
== equalish
=== really equal
!= not equal

*/
/*
if(logical expression){
    run this code
}
else if(logical expression)
{
    run this code
}
else
{
    run this code
}
*/
var smoothie=TRUE
var keys=TRUE
var FancyOutfit=TRUE

if(smoothie&keys&FancyOutfit)
{
  console.log("You can go to work")
}
else if (!smoothie&keys&FancyOutfit) {
  console.log("Go get your smoothie, silly");
}
else if (smoothie&!keys&FancyOutfit) {
  console.log("you forgot your keys");
}
else if (smoothie&keys&!FancyOutfit) {
  console.log("you are going to leave the house looking like that?");
}
else{
  console.log("get it together, you aren't ready at all!");
}
