/* Functions - default values */

func printTimesTables(for number: Int, times: Int = 10) {
    for i in 1...times {
        print("\(number) * \(i) = \(number * i)")
    }
}

printTimesTables(for: 5, times: 5)
printTimesTables(for: 2)

/* Error handling */

enum PasswordError: Error {
    case short, obvious
}

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    } else if password == "password" {
        throw PasswordError.obvious
    }

    if password.count > 10 {
        return "Good"
    } else {
        return "OK"
    }
}

let string = "password"

do {
    let result = try checkPassword(string)
    print("Result: \(result)")
} catch PasswordError.short {
    print("Password is too short")
} catch PasswordError.obvious {
    print("Password is too obvious")
} catch {
    print("Unknown error")
}

/* Checkpoint 4 */

enum NumberError: Error {
    case tooSmall, tooLarge, noRoot
}

func squareRoot (_ number: Int) throws {
    if number < 1 {
        throw NumberError.tooSmall
    } else if number > 1000 {
        throw NumberError.tooLarge
    }

    for i in 1...number {
        if i * i == number {
            print("Square root of \(number) is \(i)")
            return
        } else if i == number {
            throw NumberError.noRoot
        }
    }
}

do {
    try squareRoot(16)
} catch NumberError.tooSmall {
    print("Number is too small")
} catch NumberError.tooLarge {
    print("Number is too large")
} catch NumberError.noRoot {
    print("Number has no Int square root")
} catch {
    print("Unknown error")
}
