/* Classes */

class Game {
    var score = 0

    func printScore() {
        print("Your score is \(score)")
    }
}

var newGame = Game()
newGame.score += 10
newGame.printScore()

/* Inheritance */

class SpecialGame: Game {
    var multiplier = 2

    override func printScore() {
        print("Your score is \(score * multiplier)")
    }
}

var newSpecialGame = SpecialGame()
newSpecialGame.score += 10
newSpecialGame.printScore()

/* Initializers */

class Vehicle {
    let isElectric: Bool

    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}

class Car: Vehicle {
    let isConvertible: Bool

    init(isElectric: Bool, isConvertible: Bool) {
        self.isConvertible = isConvertible
        super.init(isElectric: isElectric)
    }
}

/* Deinitializers */

class Player {
    var id: Int

    init(id: Int) {
        self.id = id
        print("User \(id): is alive!")
    }

    deinit {
        print("User \(id): is dead!")
    }
}

for i in 1...3 {
    let player = Player(id: i)
    print("User \(player.id): is playing")
}

/* Checkpoint 7 */

class Animal {
    var legs: Int

    init(legs: Int) {
        self.legs = legs
    }

    func speak() {
        print("Hello, I am an animal with \(legs) legs.")
    }
}

class Dog: Animal {
    var breed: String

    init(breed: String) {
        self.breed = breed
        super.init(legs: 4)
    }

    override func speak() {
        print("Hello, I am a \(breed). Woof woof!")
    }
}

class Corgi: Dog {
    init() {
        super.init(breed: "Corgi")
    }
}

class Poodle: Dog {
    init() {
        super.init(breed: "Poodle")
    }
}

var corgi = Corgi()
var poodle = Poodle()
corgi.speak()
poodle.speak()

class Cat: Animal {
    var isTame: Bool

    init(isTame: Bool) {
        self.isTame = isTame
        super.init(legs: 4)
    }

    override func speak() {
        print("\(isTame ? "Meow, I am a house cat, feed me." : "Meow, I will eat you, human!")")
    }
}

class Persian: Cat {
    init() {
        super.init(isTame: true)
    }
}

class Lion: Cat {
    init() {
        super.init(isTame: false)
    }
}

var persian = Persian()
var lion = Lion()
persian.speak()
lion.speak()
