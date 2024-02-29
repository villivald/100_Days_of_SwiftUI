/* Type annotation */

let name: String = "John"
let number: Int = 10
let pi: Double = 3.14
let isSunday: Bool = true
let arrayOfStrings: [String] = ["John", "Doe"]
let dictionary: [String: Int] = ["John": 10, "Doe": 20]
let soda: Set<String> = Set(["Coke", "Pepsi", "Sprite", "Fanta"])

// All the examples below are doing the same thing - creating an empty array of strings
var teams: [String] = [String]()
var scores: [String] = []
var players = [String]()

/* Checkpoint 2 */

let colors: [String] = ["Red", "Green", "Blue", "Yellow", "Red", "Blue"]
print(colors.count)
print(Set(colors).count)
