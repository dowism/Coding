
var  = {
  name:,
  lunch:

};

var  = {
  name:,
  lunch:
};

var  = {
  name:,
  lunch:
};

var seth = {
  name : ,
  lunch : ,
  numberOfSuccessfulTrades:0,
  numberoftrades:0,
  negotiationSkill:.4//sets my ability to negotiate
};

var lunches= function(){//this let's users see who has what
  console.log(.name + " has " + .lunch);
  console.log(.name + " has " + .lunch);
  console.log(.name + " has " + .lunch);
}

var trade = function(friend){//takes one of the friend objects
  win = //makes win a random number between 0 and 1

  seth.numberoftrades++ //count the number of trades

  if (win<.negotiationSkill){//If I win, I get my friends 1st item and they get my third
    yourfood=.lunch.pop();//stores your third item
    friendsfood=friend.lunch.shift();//stores your friends first items
    .unshift(friendsfood);//puts their food first
    .push(yourfood);//puts your food last in their list
    .numberOfSuccessfulTrades++//records successful trades
    .negotiationSkill+=.05//you get better at trading
    console.log("You won the negotiation, you traded your " + yourfood + " for " + friend.name + "'s " + friendsfood);
  } else{//if I lose, I lose my first item and my friend gets it, he gives me his third
    yourfood=.lunch.shift();//stores seths first item
    friendsfood=friend.lunch.pop();//stores friends third items
    seth.lunch.push(friendsfood);//puts friends food third on the list
    friend.lunch.unshift(yourfood);//puts your best item 1st on the list
    console.log("You lost the negotiation, you got " +friend.name + "'s " + friendsfood + " and he took your " + yourfood);
  }
}
