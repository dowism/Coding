
var nathan = {
  name:"Nathan",
  lunch:["cookies","crackers", "peanut butter"]

};

var mickey = {
  name:"Mickey",
  lunch:["Gushers","Chips Ahoy", "Ritz Pack"]
};

var corbin = {
  name:"Corbin",
  lunch:["Red Vines","trail mix", "PB&J sandwich"]
};

var seth = {
  name : "Seth",
  lunch : ["orange", "raw almonds","broccoli"],
  numberOfSuccessfulTrades:0,
  numberoftrades:0,
  negotiationSkill:.4
};

var lunches= function(){
  console.log(corbin.name + " has " + corbin.lunch);
  console.log(nathan.name + " has " + nathan.lunch);
  console.log(mickey.name + " has " + mickey.lunch);
}

var trade = function(friend){
  win = Math.random()//sets the likelihood of a win

  seth.numberoftrades++ //counts the number of trades

  if (win<seth.negotiationSkill){//If I win, I get my friends 1st item and they get my third
    sethsfood=seth.lunch.pop();//stores seths third item
    friendsfood=friend.lunch.shift();//stores of friends first items
    seth.lunch.unshift(friendsfood);//puts their food first
    friend.lunch.push(sethsfood);//puts your food last in their list
    seth.numberOfSuccessfulTrades++//records successful trades
    seth.negotiationSkill+=.05//you get better at trading
    console.log("You won the negotiation, you traded your " + sethsfood + " for " + friend.name + "'s " + friendsfood);
  } else{//if I lose, I lose my first item and my friend gets it, he gives me his third
    sethsfood=seth.lunch.shift();//stores seths first item
    friendsfood=friend.lunch.pop();//stores friends third items
    seth.lunch.push(friendsfood);//puts friends food third on the list
    friend.lunch.unshift(sethsfood);//puts your best item 1st on the list
    console.log("You lost the negotiation, you got " +friend.name + "'s " + friendsfood + " and he took your " + sethsfood);
  }
}
