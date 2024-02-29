/* Conditionals */

if 1 <= 2 {
    print("Yes, 1 is less than 2")
}

var name = "John"
let age = 30

if name == "John" {
    print("Yes, name is John")
}

if name.isEmpty { // more efficient than checking with count
    name = "Anonymous"
    print("Name is empty")
}

if age < 30 {
    print("You are young")
} else if age == 30 {
    print("You are 30")
} else {
    print("You are old")
}

if age >= 21 && age < 65 { //Both conditions must be true
    print("You are of working age")
}

if age < 21 || age >= 65 { //Either condition must be true
    print("You are not of working age")
}

enum Weather {
    case sun, rain, wind, snow, unknown
}

let currentWeather = Weather.sun

switch currentWeather {
    case .sun:
        print("It's sunny")
        fallthrough // Continue to next case
    case .rain:
        print("It's raining")
    case .wind:
        print("It's windy")
    case .snow:
        print("It's snowing")
    case .unknown:
        print("I don't know the weather")
    default:
        print("There is some error")
}

var testCase = 5
let ternaryResult = testCase >= 5 ? "Yes" : "No"
print(ternaryResult)
