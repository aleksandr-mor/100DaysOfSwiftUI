import Foundation

func printTimesTables (for number: Int, end: Int) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5, end: 20)

func printTimesTablesOne(for number: Int, end: Int = 12) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTablesOne(for: 5, end: 20)
printTimesTablesOne(for: 8)

var characters = ["Lana", "Pam", "Ray", "Sterling"]
print(characters.count)
characters.removeAll(keepingCapacity: true)
print(characters.count)

func findDirections(from: String, to: String, route: String = "fastest", avoidHighways: Bool = false) {
    // code here
}
findDirections(from: "London", to: "Glasgow")
findDirections(from: "London", to: "Glasgow", route: "scenic")
findDirections(from: "London", to: "Glasgow", route: "scenic", avoidHighways: true)


enum PasswordError: Error {
    case short, obvious
}
func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    }
    
    if password == "12345" {
        throw PasswordError.obvious
    }
    
    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}

let string = "12345"

do {
    let result = try checkPassword(string)
    print("Password rating: \(result)")
} catch PasswordError.short {
    print("Please use a longer password.")
} catch PasswordError.obvious {
    print("I have the same combination on my luggage!")
} catch {
    print("There was an error.")
}

//do {
//    try throwingFunction1()
//    nonThrowingFunction1()
//    try throwingFucntion2()
//    nonThrowingFunction2()
//    try throwingFunction3()
//    nonThrowingFunction3()
//} catch {
//    // handle errors
//}

enum SquareRootError: Error {
    case outOfBounds
    case noRoot
}

func integerSquareRoot(_ number: Int) -> Int {
    guard number >= 1 && number <= 10_000 else {
        throw SquareRootError.outOfBounds
    }
    
    var guess = number
    var previousGuess = 0
    
    while guess * guess > number {
        guess = (guess + number / guess)/2
        
        if guess == previousGuess {
        throw SquareRootError.noRoot
        }
        previousGuess = guess
    }
    return guess
}

do {
    let result = try integerSquareRoot(25)
    print("Square root: \(result)")
} catch SquareRootError.outOfBounds {
    print("Error: Out of bounds")
} catch SquareRootError.noRoot {
    print("Error: No square root found")
} catch {
    print("An unexpected error occured")
}
