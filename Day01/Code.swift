/* Variables and constants */
var name = "John Smith" // Variable
name = "John Doe"

let age = 25 // Constant
// age = 26 - Will throw an error

/* Console output */
print(name) // John Doe
print("The name is \(name) and the age is \(age)") // The name is John Doe and the age is 25

/* Strings */
let quote = "Using \"backslashes\" to escape quotes"
let multiline = """
    This is a multiline string
    Three double quotes are used
""" //must be on a new line
print(quote.count) // 36 - Length of the string
print(quote.uppercased()) // USING "BACKSLASHES" TO ESCAPE QUOTES
print(quote.hasPrefix("Using")) // true
print(quote.hasSuffix("nope")) // false

/* Integers */
var number = 100
let bigNumber = 100_000_000

let sum = number + 10 // OR +=number
let diff = number - 10
let product = number * 10
let quotient = number / 10
let remainder = number % 10

print(sum, diff, product, quotient, remainder) // 110 90 1000 10 0

number += 30
print(number) // 130

print(number.isMultiple(of: 5)) // true

/* Doubles */
let decimal = 3.14
// var sumOfDecimalAndNumber = number + decimal // Error - Cannot add Int and Double
var sumOfDecimalAndNumber2 = Double(number) + decimal
sumOfDecimalAndNumber2 *= 2 // Ok
print(sumOfDecimalAndNumber2) / 266.28
