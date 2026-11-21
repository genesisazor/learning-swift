//Arrays Practice

import Foundation
//Create an empty array using the var keyword to hold a set of Strings
var names: [String] = [ ]

// Add 5 names to the array WITHOUT using the append() method
names += ["Michael","Jermaine","Tito","Randy","Marlon"]

//Add another name to the array by using the .append() method
names.append("Janet")

// Add a new name to position/index 3 using the .insert method
names.insert("Joe" , at: 3)

//Use the method to find how many items are in the list
names.count

//Remove the item in position 3
names.remove(at: 3)

//Change the item in position 0 to all lowercase letters using a method for Strings
names[0] = names[0].lowercased()




// NUMBERS IN ARRAYS
var scores: [Double] = [56.5, 82.4, 90.0, 88.2, 77.8, 73.5, 67.6, 94.7, 50.5]

// Find and return the highest score in the scores array

scores.max()

/* A function that returns the highest score
 
 func highestScore () -> Double {
    return sortedScores [8]
 }
 
 */
 

let sortedScores = scores.sorted()
print(sortedScores[8])

// Find and return the lowest score in the scores array
 func lowestScore() -> Double {
     return sortedScores [0]
 }

//scores.min()

// Find the average score from the scores array
func average(numbers: [Double]) -> Double {
    var total = 0.0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}
print(" The average is \(average(numbers:scores)).")

// Remove the lowest score from the array
scores.remove(at:0)
//scores.remove(at: scores.firstIndex(of: scores.min()!)!)
print("Here is the new list after dropping the lowest score: \(scores)")

// loop through the scores array and multiply each score by 2
    for i in 0..<scores.count {
        scores[i] *= 2
    }

//print("The doubled scores are \(scores)")

struct Album{
    let title: String
    let artist: String
    let year: Int
    var daysUntilTour : Int = 500
    
    //Method of the Album struct
    func printSummary(){
        print("\(title) \(year) by \(artist)")
    }
    mutating func daysUntilTour(days: Int) {
       //code in here
        print(daysUntilTour - days)
    }
}

let benito = Album(title:"Debi Tirar Mas Fotos" , artist: "Bad Bunny" , year: 2016, daysUntilTour:200)

//benito.daysUntilTour(200)
