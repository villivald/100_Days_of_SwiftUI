/* Booleans */
let isTrue = true
let isFalse = false

let isMultiple = 120.isMultiple(of: 3) // true

var isAuthorized = false
isAuthorized = !isAuthorized // true

var isBoring = true
isBoring.toggle() // toggle() can be used to flip the value of a boolean
print(isBoring) // false

/* String interpolation */
let name = "John"
let age = 25
let message = "Hello, my name is \(name) and I am \(age) years old."
let theSameMessage = "Hello, my name is " + name + " and I am " + String(age) + " years old."

print(message)
print(theSameMessage)

print("The product of 3 and 4 is \(3 * 4)")

/* Checkpoint */
let temperatureInCelcius = 25.0
let temperatureInFahrenheit = temperatureInCelcius * 9 / 5 + 32
print("The temperature is \(temperatureInCelcius)°C or \(temperatureInFahrenheit)°F")
