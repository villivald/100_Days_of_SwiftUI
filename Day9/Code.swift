/* Closures */

let sayHello = {(name: String) -> Void in
    print("Hello, \(name)!")
}

sayHello("Swift")


func getUserData(for id: Int) -> String {
    if id == 1898 {
        return "Swift"
    } else {
        return "Unknown"
    }
}

let data: (Int) -> String = getUserData
let user = data(1898)
print(user) // Swift

let team = ["John", "Paul", "George", "Ringo"]
let captainFirstTeam = team.sorted(by: { (name1: String, name2: String) -> Bool in
    if name1 == "John" {
        return true
    } else if name2 == "John" {
        return false
    } else {
        return name1 < name2
    }
})

print(team.sorted()) // ["George", "John", "Paul", "Ringo"]
print(captainFirstTeam) // ["John", "George", "Paul", "Ringo"]

/* Trailing closures and shorthand syntax */

let paulFirstTeam = team.sorted {
    if $0 == "Paul" { return true }
    if $1 == "Paul" { return false }

    return $0 < $1
}

print(paulFirstTeam) // ["Paul", "George", "John", "Ringo"]

/* Map, filter, reduce */

let jOnly = team.filter { $0.hasPrefix("J") }
print(jOnly) // ["John"]

let uppercasedTeam = team.map { $0.uppercased() }
print(uppercasedTeam) // ["JOHN", "PAUL", "GEORGE", "RINGO"]

let totalCharacters = team.reduce(0) { $0 + $1.count }
print(totalCharacters) // 19

/* Functions as parameters */

func makeArray(size: Int, using generator: () -> Int) -> [Int] {
    var result = [Int]()

    for _ in 0..<size {
        let newNumber = generator()
        result.append(newNumber)
    }

    return result
}

let rolls = makeArray(size: 5) {
    Int.random(in: 1...6)
}

print(rolls) // [5, 3, 2, 6, 1]


/* Checkpoint 5 */

let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

func formatArray(_ array: [Int]) {
    let formattedArray = array.filter{$0 % 2 != 0}.sorted().map { "\($0) is a lucky number" }

    for item in formattedArray {
        print(item)
    }
}

formatArray(luckyNumbers)

// Using closure

let formattedNumbers = luckyNumbers.filter {$0 % 2 != 0}.sorted {$0 < $1}.map {"\($0) is a lucky number"}

print(formattedNumbers.joined(separator: "\n"))
