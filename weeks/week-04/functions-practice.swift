print("Functions Class Activity[3/26/2026]")

// TASK 1: Write a function that takes a first and last name and returns the full name as a single String. Add a default value for last name of "Student" in case it isn't provided.
func fullName(first: String,last: String = "Student") ->
    String {
    return "Your full name is \(first) \(last)"
}
fullName(first:"Benjamin",last:"Franklin")

// TASK 2: Write a function that takes a student's grade as an Int and returns a Bool indicating whether they are passing (60 or above).


func gradeToBool(grade: Int) -> Bool  // {return score >=60? true:false}
    {
    let grade = 90
    if (grade >= 60){
        return true
    }
    else {
       return false
    }
}
//OkgradeToBool(grade:90)

// TASK 3: Write a function that takes the names and ages of two students and returns a string stating who is younger, e.g. "\(name1) is younger!". NB: You don't have to use an array for this
func whoIsOlder (first1: String, age1: Int, first2: String, age2:Int) -> String {
    if age1 == age2 {
        return "\(first1) and \(first2) are the same age."
    }
    if age1 > age2 {
        return "\(first2) is younger."
    }
    else {
        return "\(first1) is younger."
    }
}
    whoIsOlder(first1:"Kathy",age1:26, first2: "Kevin", age2: 20)
    
    // Bonus 1: Write a function where the external label is student and the internal name is studentName. It should return "This is \(studentName)!" and be called as introduce(student: "Alex").
    
    func introduce (student studentName: String) -> String {
        return "This is \(studentName)!"
    }
    //print (introduce(student: "Alex"))
    
    // Bonus 2: Repeat a Message — Write a function that takes a String message and an Int count, and prints the message that many times using a for loop.
func messageRepeat(message: String ,numTimes: Int) {
        for i in 1...numTimes {
            print (message)
        }
    }
//messageRepeat(message: "Hello",numTimes: 3)

/** ---------------------------------------------------------**/

// Write a function orderCoffee that takes a String size and a String milk with a default of "oat" and returns "One [size] coffee with [milk] milk. Call it once with milk and once without.
func orderCoffee(drinkSize size:String ,milkName: String = "Oat") -> String {
    return "One \(size) coffee with \(milkName) milk."
}
orderCoffee(drinkSize:"Medium" ,milkName:"Almond")
orderCoffee(drinkSize:"Small")

//Write a function isEven that takes an Int and returns whether it's even. Call it as isEven(7) with no label.

func isEven(_ number:Int) -> Bool {
    number % 2 == 0  ? true : false
}
isEven(7)

//Write a function called as pay(amount:20,to:"Kim") that returns
//Write a function called as pay(amount:20,to:"Kim") that returns "Paid $20 to Kim." Inside the function use the names dollars and person.
//func pay (amount:Int,to person:String) -> String{
//    return "Paid $\(amount) to \(person)."
//}
//print(pay(amount:20,to: "Kim" ))

// Write a function orderCoffee that takes a String size and a String milk with a default of "oat" and returns "One [size] coffee with [milk] milk. Call it once with milk and once without.
//func orderCoffee (_ size:String , milk:String = "Oat") -> String {
//    return "One \(size) coffee with \(milk) milk."
//}
//print (orderCoffee("Small",milk:"Almond"))
//print(orderCoffee("Small"))

// TASK: Write a function temperatureLabel that takes a temperature (Int) and returns:
//   "Hot"  if it's 85 or above
//   "Nice" if it's 60 to 84
//   "Cold" otherwise
// The calls below use no label, so set up the parameter accordingly.

// Write your function here


// Tests: each should print the label in the comment
// print(temperatureLabel(90))   // Hot
// print(temperatureLabel(70))   // Nice
// print(temperatureLabel(40))   // Cold

func temperatureLabel(_ temp:Int) -> String {
    if (temp >= 85){
        return "Hot"
    } else if (temp >= 60 && temp <= 84){
        return "Nice"
    } else {
        return "Cold"
    }
}
print(temperatureLabel(90))
print(temperatureLabel(70))
print(temperatureLabel(40))

/*
 switch temp {
 case 85...: return "Hot"
 case 60..85: return "Nice"
 default: return "Cold"
 }
 
 */
