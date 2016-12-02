

/*
hangman
add a feature that will tell you what you have already guessed when you are wrong*/



/*
Here are your directions
Basic:
1. Explain each snippet of code, and why it exists. Do this by using the // comment operator.


Advanced:
2. add functionality to the program by having it tell you when you have lost(you determine the number of incorrect guesses)

3. Add functionality by allowing the user to setup the hangman word to be guessed.


Once you have finished, save it as a txt file and upload it
*/


//here is an example of explaining a snippet of code

//wordToGuess is initializing a variable that represent the word the user is trying to guess
wordToGuess="scramble"

wordAsList=[]
for (var i = 0; i < wordToGuess.length; i++) {
  wordAsList[i]=wordToGuess[i]

}

userWord=[]
for (var i = 0; i < wordToGuess.length; i++) {
  userWord[i]=" _ "
}

numberOfIncorrectGuesses=0

guess = function(letter) {
  if(wordAsList.indexOf(letter)!=-1){
    userWord[wordAsList.indexOf(letter)]=wordAsList[wordAsList.indexOf(letter)]
    console.log("You guessed " + letter + " Correctly! " + "You now have " + userWord.join(""));
  } else {
    numberOfIncorrectGuesses++
    console.log("I am sorry that is incorrect, you have guessed incorrectly " + numberOfIncorrectGuesses + " times");
  }

}
