/* Functions - Part 1 */

func sum(a: Int, b: Int) {
    print("\(a) + \(b) = \(a + b)")
}
sum(a: 5, b: 10) // 5 + 10 = 15

func sqrt(number: Int) -> Int {
    return number * number
}
print(sqrt(number: 6)) // 36

func containsSameCharacters(string1: String, string2: String) -> Bool {
    string1.sorted() == string2.sorted()
}
print(containsSameCharacters(string1: "abc", string2: "bca")) // true

 // Function returning a multiple values in a tuple
func getUser() -> (firstName: String, lastName: String) {
    ("John", "Doe")
}
let user = getUser()
print("First name: \(user.firstName)\nLast name: \(user.lastName)") // Name: John, Last Name: Doe

let (firstName, lastName) = getUser() // Destructuring the tuple
print("Name: \(firstName) \(lastName)") // Name: John Doe

// Adding an external parameter name
func printTimesTable(for number: Int) {
    for i in 1...10 {
        print("\(number) * \(i) = \(number * i)")
    }
}
printTimesTable(for: 5)

// Omitting the parameter label
func isUppercase(_ string: String) -> Bool {
    string == string.uppercased()
}
let string = "HELLO, WORLD"
let result = isUppercase(string)
