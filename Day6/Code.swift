/* Loops */

let colors = ["Red", "Green", "Blue", "Yellow"]

for color in colors {
    print(color)
}

for i in 1...12 {
    print("5 x \(i) = \(5 * i)")
}

for i in 1...12 { // Nested Loop
    print("The \(i) times table")
    for j in 1...12 {
        print("\(i) x \(j) = \(i * j)")
    }
}

for i in 1..<5 { // Excluding the last number
    print("Counting from 1 to 4: \(i)")
}

for _ in 1...5 { // Ignoring the value
    print("Hello")
}

print(colors[1...]) // ["Green", "Blue", "Yellow"]

var countdown = 10
while countdown > 0 {
    print(countdown)
    countdown -= 1
}

let id = Int.random(in: 1...1000)
let amount = Double.random(in : 0...1)

/* Break and continue */

for i in 1...10 {
    if i % 2 == 0 {
        continue
    }
    print(i) // 1, 3, 5, 7, 9
}

for i in 1...10 {
    if i == 5 {
        break
    }
    print(i) // 1, 2, 3, 4
}

/* Checkpoint 3 */

for i in 1...100 {
    if i.isMultiple(of: 3) && i.isMultiple(of: 5) {
        print ("FizzBuzz")
    } else if i.isMultiple(of: 3) {
        print ("Fizz")
    } else if i.isMultiple(of: 5) {
        print ("Buzz")
    } else {
        print (i)
    }
}
