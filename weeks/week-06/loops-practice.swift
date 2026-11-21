// Loops practice

let cities = ["Austin", "Denver", "Chicago", "Seattle", "Miami"]
print ("Here is the list of cities:")
// Use a for-in loop to print every city in the cities array
for city in cities {
    print(city)
}
            
// Use a for-in loop to print only the cities that have more than 6 characters
// Hint: use city.count inside an if statement


let temperatures = [72.1, 68.4, 85.0, 91.3, 77.6, 63.2]

print("Here are the temperatures:")
// Use forEach to print every temperature in the array
temperatures.forEach {temperature in
    print(temperature)
}

// Use forEach with $0 shorthand to print each temperature multiplied by 2
print("Here are the temperatures again:")
temperatures.forEach{
    print($0)
}

// Use forEach to print only temperatures above 75.0
print("Here are the temperatures over 75 degrees:")
temperatures.forEach{ temperature in
    if (temperature >= 75.0) {
        print(temperature)
    }
        
}

let players = ["Maya", "Jordan", "Sam", "Taylor", "Alex"]
// Use enumerated() to print each player with their position number
// Example output: "Player 1: Maya"
// Note: add 1 to the index so numbering starts at 1, not 0
print ("Here is the list of baseball players:")
for (index, player) in players.enumerated() {
    print (" Player \(index)" , "\(player)")
}

// Use enumerated() to print only players at even indexes (0, 2, 4...)
// Hint: use the % operator to check if the index is even
print ("Here are the even numbered players:")

for (index,player) in players.enumerated() {
  //  index = index + 1
   //
    if (index + 1) % 2 == 0 {
        print (player)
    }
}

// Use enumerated() to print the index and value of every player
// whose name is shorter than 5 characters
for (index,player) in players.enumerated() {
    // count the characters of each name
    player.count
    // if characters < 5 print index and number of characters
    if player.count < 5 {
        print ("Player number \(index) 's name is \(player) and has \(player.count) characters.")
    }
}


// MIXED PRACTICE
let grades: [Double] = [78.5, 92.0, 55.3, 88.8, 73.1, 96.4, 61.0, 84.2]
let subjects = ["Math", "Science", "History", "English", "Art"]

print ("Here are the subjects:")
// Print every subject in the subjects array
for subject in subjects {
    print(subject)
}


print("Here is every grade in the array:")
// Print each grade in the grades array
for grade in grades {
    print(grade)
}

print ("Here are the grades above 80:")
// Print only grades above 80.0
for grade in grades {
    if grade > 80.0 {
        print (grade)
    }
}

print ("Here are the grades below min 70.0 :")
// Print the index and value of any grade below 70.0
for (index,grade) in grades.enumerated() {
    if grade < 70.0 {
        print ("Grade number \(index) is below the minimum 70.0 with a score of \(grade)")
    }
}

