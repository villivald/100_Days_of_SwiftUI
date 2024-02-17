/* Arrays */

var numbers = [1, 2, 3, 4, 5] // Array of Integers
let names = ["John", "Jane", "Jack"] // Array of Strings
var temperatures: [Double] = [23.5, 24.0, 25.5, 26.0] // Array of Doubles

numbers.append(10) // OK
// numbers.append("Hello") // Error - only Integers can be added

// names.append("Jim") // Not allowed - names is a constant

var scores = Array<Int>() // Empty array of Integers
scores.append(1)
scores.append(2)
scores.append(contentsOf: numbers)
print(scores) // [1, 2, 1, 2, 3, 4, 5, 10]
print(scores.sorted()) // [1, 1, 2, 2, 3, 4, 5, 10]
print(scores.count) // 8

var colors = [String]() // Empty array of Strings
colors.append("Red")
colors.append("Green")
colors.append("Blue")
colors.remove(at: 2)
print(colors) // ["Red", "Green"]
print(colors.contains("Red")) // true
colors.removeAll()
print(colors) // []

/* Dictionaries */

let employee: [String: Any] = ["name": "John", "age": 25, "salary": 50000]
print(employee["name"]!)
print(employee["age",  default: 0])

var olympics = [ 2012: "London", 2016: "Rio", 2020: "Tokyo"]
print(olympics[2016]!)
olympics[2024] = "Paris"
print(olympics)

/* Sets */

var actors = Set(["Tom Cruise", "Tom Hanks", "Nicolas Cage"])
print(actors)
actors.insert("Tom Hardy")
actors.remove("Tom Cruise")
actors.insert("Julia Roberts")
print(actors) // NOTE: The order of elements is not guaranteed

/* Enums */

enum Month {
    case January, February, March, April, May, June, July, August, September, October, November, December
}

var currentMonth = Month.August
currentMonth = .July
var nextMonth: Month = .September
print(currentMonth) // July
print(nextMonth) // September
