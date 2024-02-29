/* Access control */

struct BancAccount {
    // private var funds = 0 // Can not be accessed from outside the struct
    // fileprivate var funds = 0 // Can be accessed from the same file only
    private(set) var funds = 0 // Can be read from outside the struct but not written

    mutating func deposit(amount: Int) {
        funds += amount
    }

    mutating func withdraw(amount: Int) -> Bool {
        if amount < funds {
            funds -= amount
            return true
        } else {
            return false
        }
    }
}

var account = BancAccount()
account.deposit(amount: 100)

let success = account.withdraw(amount: 50)

if success {
    print("Withdrawal successful")
    print(account.funds)
} else {
    print("Insufficient funds")
    print(account.funds)
}

// account.funds -= 10000 -> Would be possible if funds were public

/* Static properties and methods */

struct School {
    static var studentCount = 0

    static func add(student: String) {
        print("Adding \(student)")
        studentCount += 1
    }
}

School.add(student: "John")
School.add(student: "Jane")
print(School.studentCount) // 2

/* Checkpoint 6 */

struct Car {
    let model: String
    let numberOfSeats: Int
    var currentGear: Int = 0

    mutating func changeGear(to newGear: Int) {
        if newGear < 0 || newGear > 10 {
            print("Invalid gear")
        } else {
            currentGear = newGear
            print("Changed gear to \(newGear)")
        }
    }
}

var toyota = Car(model: "Toyota", numberOfSeats: 5)
toyota.changeGear(to: 3) // Changed gear to 3
toyota.changeGear(to: 11) // Invalid gear
