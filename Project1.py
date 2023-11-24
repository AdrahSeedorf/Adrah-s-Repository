###This module holds the options of the kinds of services provided by the restaurant.

def displayOptions():
  print("----------")
  print("O: Online Delivery Service")
  print("T: Table Service")
  print("E: Exit")
  print("----------")

###This is where the choice of the user is taken to continue with the process.
###The module also calls another module to display the options

def getUserChoice():
  displayOptions()
  choice = input("Enter your choice: ")
  if choice == "o":
    choice = 'O'
  elif choice == "t":
    choice = 'T'
  elif choice == "e":
    choice = 'E'
  while not (choice == "O" or choice == "T" or choice == "E" or choice == "o" or choice == "t" or choice == "e"):
    print("Invalid choice. Please try again.")
    choice = input("Enter your choice: ")
  return choice

### Protein Menu

def displayProteinMenu():
  print("----------")
  print("Protein Choices:")
  print("==========")
  print("A: Kangaroo ($20)")
  print("B: Chicken ($10)")
  print("C: Tofu ($11)")
  print("==========")

### Sauce Menu

def displaySauceMenu():
  print("----------")
  print("Sauce Choices:")
  print("==========")
  print("X: Chilli Basil ($3)")
  print("Y: Teriyaki ($1)")
  print("Z: Satay Sauce ($5)")
  print("==========")

###Drinks Menu

def displayDrinksMenu():
  print("----------")
  print("Drink Choices:")
  print("==========")
  print("Y: Yes ($4)")
  print("N: No ($0)")
  print("==========")

###Module to get user's protein choice 
###When an invalid choice is selected, we display an error message

def getProteinChoice():
  displayProteinMenu()
  proteinChoice = input("Please enter your choice of protein: ")
  while not (proteinChoice == "A" or proteinChoice == "B" or proteinChoice == "C" or proteinChoice == "a" or proteinChoice == "b" or proteinChoice == "c"):
    print("Error, Invalid protein choice!")
    proteinChoice = input("Please enter your choice of protein: ")
  if proteinChoice == "a":
    proteinChoice = 'A'
  elif proteinChoice == "b":
    proteinChoice = 'B'
  elif proteinChoice == "c":
    proteinChoice = 'C'
  if proteinChoice == "A":
    proteinPrice = 20
  elif proteinChoice == "B":
    proteinPrice = 10
  elif proteinChoice == "C":
    proteinPrice = 11
  return proteinPrice

### Module to get user's Sauce choice
###When an invalid choice is selected, we display an error message
 
def getSauceChoice():
  displaySauceMenu()
  sauceChoice = input("Please enter your sauce choice: ")
  while not (sauceChoice == "X" or sauceChoice == "Y" or sauceChoice == "Z" or sauceChoice == "x" or sauceChoice == "y" or sauceChoice == "z"):
    print("Error, Invalid sauce choice!")
    sauceChoice = input("Please enter the type of sauce you want: ")
  if sauceChoice == "x":
    sauceChoice = 'X'
  elif sauceChoice == "y":
    sauceChoice = 'Y'
  elif sauceChoice == "z":
    sauceChoice = 'Z'
  if sauceChoice == "X":
    saucePrice = 3
  elif sauceChoice == "Y":
    saucePrice = 1
  elif sauceChoice == "Z":
    saucePrice = 5
  return saucePrice

### Module to get user's drink choice 
###When an invalid choice is selected, we display an error message

def getDrinkChoice():
  displayDrinksMenu()
  drinkChoice = input("Would you like to add a drink, please? (Y:(Yes)/ N(No)): ")
  while not (drinkChoice == "Y" or drinkChoice == "N" or drinkChoice == "y" or drinkChoice == "n"):
    print("Error, Invalid drink choice!")
    drinkChoice = input("Would you like to add a drink please? {Y:(Yes)/ N:(No)}: ")
  if drinkChoice == "y":
    drinkChoice = 'Y'
  elif drinkChoice == "n":
    drinkChoice = 'N'
  if drinkChoice == "Y":
    drinkPrice = 4
  elif drinkChoice == "N":
    drinkPrice = 0
  return drinkPrice

### Module to calculate total cost of meal
def calcTotal(x,y,z):
  total = x + y + z
  return total

### Module to get username
###This module ensures that the user does not leave the name blank because we need to display it on the invoice

def getUserName():
  name = input("Please enter your first name: ")
  while name == (""):
    print("Sorry, name cannot be blank!!!")
    name = input("Please enter your first name: ")
  return name

### Module to get user's phone number 
###Phone can also not be left empty becasue we might need to give the user a call when anything goes wrong

def getPhoneNumber():
  phone = input("Please enter your phone number: ")
  while phone == (""):
    print("Sorry,we might need to give you a call!!!")
    phone = input("Please enter your phone number: ")
  return phone

### Module to get delivery address 

def getAddress():
  streetNo = input("*Please enter your street number: ")
  streetName = input("*Please enter your street name: ")
  suburb = input("*Please enter your suburb: ")
  state = input("*Enter the state: ")
  postCode = input("Please enter your post code: ")
  address = streetNo + " " + streetName + ", " + suburb + " " + state + " " + postCode
  return address

### Receipt or Invoice

def invoiceHeader():
  print("===============================================")
  print("<<<<<<<<<<ADRAH'S RESTAURANT>>>>>>>>>>")
  print("===============================================")
  print("Invoice for:",name,"***** Phone:",phone)

###The price of the meal is calculated and displayed on the invoice

def calcMealPrice():
  print("-----------------------------------------------")
  print("1 meal containing the following: ")
  if choiceA == 20:
    print("Protein Choice A Kangaroo ($ 20)")
  elif choiceA == 10:
    print("Protein Choice B Chicken    ($ 10)")
  elif choiceA == 11:
    print("Protein Choice C Tofu  ($ 11)")
  if choiceB == 3:
    print("Sauce Choice X Chilli Basil     ($ 3)")
  elif choiceB == 1:
    print("Sauce Choice Y Teriyaki   ($ 1)")
  elif choiceB == 5:
    print("Sauce Choice Z Satay Sauce      ($ 5)")
  if choiceC == 4:
    print("1 X Drink                 ($  4)")
  elif choiceC == 0:
    print("No drink                  ($  0)")
  print("-----------------------------------------------")
  mealPrice = calcTotal(choiceA,choiceB,choiceC)
  print("Meal Price: $",mealPrice)
  print("-----------------------------------------------")
  return mealPrice

### Module to get user's payment method

def paymentMethod():
  print("==========")
  print("Payment Options:")
  print("==========")
  print("C: Cash")
  print("V: Visa Card")
  print("M: Master Card")
  print("D: Debit Card")
  print("----------")
  payment = input("Please enter your payment method: ")
  if payment == "c":
    payment = 'C'
  elif payment == "v":
    payment = 'V'
  elif payment == "m":
    payment = 'M'
  elif payment == "d":
    payment = 'D'
  if payment == "C":
    print("You have selected Cash")
  elif payment == "V": 
    print("You have selected Visa Card")
  elif payment == "M":
    print("You have selected Master Card")
  elif payment == "D":
    print("You have selected Debit Card")

### Error statement is generated when user enters an invalid payment method.

  while not (payment == "C" or payment == "V" or payment == "M" or payment == "D"):
    print("Enter a valid payment option")
    payment = input("Please enter your payment method: ")
  return payment
def getCardDetails():
  cardNumber = input("Please enter your card number: ")
  cardName = input("Please enter your card name: ")
  cardExpiry = input("Please enter your card expiry date: ")
  cardCVV = input("Please enter your card CVV: ")
  return cardNumber, cardName, cardExpiry, cardCVV

###Main Program

### HEADER
print("===============================================")
print("*** Welcome to Adrah's Restaurant ***")
print("===============================================")
name = getUserName()
phone = getPhoneNumber()
userChoice = getUserChoice()
if userChoice == "o" or userChoice == "O":
  print("---------------")
  print("[Online Delivery service]")
  print("---------------")
  choiceA = getProteinChoice()
  choiceB = getSauceChoice()
  choiceC = getDrinkChoice()
  deliveryAddress = getAddress()
  payment = paymentMethod()

### If user is not paying by cash we take the card details to process the payment

  if payment != "C":
    getCardDetails()
  header = invoiceHeader()
  print("Delivery Address:", deliveryAddress)
  mealPrice = calcMealPrice()
  if payment != "C":
    total = calcTotal(choiceA,choiceB,choiceC)
    tax = 0.05
    totalCost = total + (total * tax)
    print("Tax = 5%")
    print("===============================================")
    print("Total meal cost is: $",        totalCost)
    print("===============================================")
    print("Please pay at the counter")
    print("-----------------------------------------------")

###Where the user chooses to pay by cash, the total amount is not taxed.

  else:
    total = calcTotal(choiceA,choiceB,choiceC)
    tax = 0
    totalCost = total + (total * tax)
    print("No tax")
    print("===============================================")
    print("Total meal cost is: $",        total)
    print("===============================================")
    print("Please pay at the cash register")
  print("-----------------------------------------------")
  print("Thank you for choosing Adrah's Restaurant!!")

### Table Service 

if userChoice == "t" or userChoice == "T":
  print("---------------")
  print("[Table Service]")
  print("---------------")
  tableNumber = input("Please enter your table number: ")
  choiceA = getProteinChoice()
  choiceB = getSauceChoice()
  choiceC = getDrinkChoice()
  payment = paymentMethod()
  if payment != "C":
    getCardDetails()
  header = invoiceHeader()
  print("Table:",tableNumber)
  mealPrice = calcMealPrice()
  if payment != "C":
    total = calcTotal(choiceA,choiceB,choiceC)
    tax = 0.05
    totalCost = total + (total * tax)
    print("Tax = 5%")
    print("===============================================")
    print("Total meal cost is: $",        totalCost)
    print("===============================================")
    print("Please pay at the counter")
    print("-----------------------------------------------")
  else:
    total = calcTotal(choiceA,choiceB,choiceC)
    tax = 0
    totalCost = total + (total * tax)
    print("No tax")
    print("===============================================")
    print("Total meal cost is: $",        total)
    print("===============================================")
    print("Please pay at the cash register")
  print("-----------------------------------------------")
  print("Thank you for choosing Adrah's Restaurant!!")
if userChoice == 'E':
  print("Goodbye, Thank you for stopping by!!!")

  
  


