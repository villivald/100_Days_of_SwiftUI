/* Structs */

struct Album {
    var title: String
    let artist: String
    let year: Int

    func summary() {
        print("\(title) by \(artist) was released in \(year)")
    }

    mutating func changeTitle(to newTitle: String) {
        title = newTitle
    }
}

var album = Album(title: "1989", artist: "Taylor Swift", year: 2014)
print(album.title) // 1989
album.summary() // 1989 by Taylor Swift was released in 2014

album.changeTitle(to: "Fearless")
album.summary() // Fearless by Taylor Swift was released in 2014

/* Computed properties */

struct Employee {
    let name: String
    var vacationAllocated = 14
    var vacationTaken = 0

    var vacationRemaining: Int {
        get {
            vacationAllocated - vacationTaken
        }

        set {
            vacationAllocated = vacationTaken + newValue
        }
    }
}

var employee = Employee(name: "Taylor", vacationTaken: 4)
employee.vacationTaken += 7
print(employee.vacationRemaining) // 3
employee.vacationRemaining = 10

/* Property observers */

struct Game {
    var score = 0 {
        didSet {
            print("Score is now \(score), \(oldValue) was the previous score")
        }
    }
}

var game = Game()
game.score += 10
game.score -= 4
game.score += 2

struct App {
    var contacts = [String]() {
        willSet {
            print("Current contacts are: \(contacts.count > 0 ? contacts.joined(separator: ", ") : "-")")
            print("New value will be \(newValue)")
        }

        didSet {
            print("There are \(contacts.count) contacts now")
            print("Old value was: \(oldValue)")
        }
    }
}

var app = App()
app.contacts.append("Taylor")
app.contacts.append("Adele")

/* Custom initializers */

struct Player {
    let name: String
    let number: Int

    init(name: String, number: Int) {
        self.name = name
        self.number = number
    }
}

let player = Player(name: "Taylor" , number: 13)
print(player) // Player(name: "Taylor", number: 13)
