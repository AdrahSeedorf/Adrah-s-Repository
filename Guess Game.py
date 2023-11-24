### This module prints the header of the game.

def printHeader():
  print("+--+--+--+--+--+--+--+--+--+")
  print("**** ADRAH'S GUESS GAME ****")
  print("+--+--+--+--+--+--+--+--+--+")

###The import random function is used to select a random integer between 1 and 10.
import random
def guessNumber():
  secretNumber = random.randint(1,10)
  attempts = 3
  print("Welcome to Adrah's Guess Game")
  print("I'm thinking of a number between 1 and 10")
  print("You have 3 attempts to guess the number")
  print("Good luck!")
  for attempts in range(1,4):
    guess = int(input("Guess the number: "))
    if guess == secretNumber:
      print("Congratulations! You guessed the number!") ###If the user is able to guess correctly, the program prints a congratulatory message.
      break
    elif guess < secretNumber:
      print("Your guess is too low")
    else:
      print("Your guess is too high")
  if guess != secretNumber:
    print("Sorry, you ran out of guesses")
    print("The correct number was", secretNumber) ### After 3 wrong guesses the program displays the secret number.

###This module is used to ask the user if they want to continue the game or quit.

def userOption():
  print("Please select an option:")
  print("1. Start a new game")
  print("2. Exit")
  option = input("Option: ")
  while not (option == "1" or option == "2"):
    print("Invalid choice.") 
    option = input("Please select an option (1 0r 2):")
  if option == "1":
    guessNumber()
    userOption()
  elif option == "2":
    print("Thank you for Playing with us today")
    print("See you later")
  return option
printHeader()
guessNumber()
userOption()