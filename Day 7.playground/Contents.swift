import Foundation

func showWelome() {
    print("Welcome to my app!")
    print("By default This prints out a conversation")
    print("chart from cantimeters to inches, but you")
    print("can also set a custom range if you want.")
}
showWelome()

let number = 139

if number.isMultiple(of: 2) {
    print("Even")
} else {
    print("Odd")
}

let roll = Int.random(in: 1...20)

func printTimesTables(number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(number: 5)

func printTimesTables1(number: Int, end: Int) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables1(number: 5, end: 20)

//let root = sqrt(169)
//print(root)

func rollDice() -> Int {
    return Int.random(in: 1...6)
}
let result = rollDice()
print(result)

func areLettersIdentical(string1: String, string2: String) -> Bool {
    let first = string1.sorted()
    let second = string2.sorted()
    return first == second
}
areLettersIdentical(string1: "aaa", string2: "aaa")

func areLettersIdentical1(string1: String, string2: String) -> Bool {
    return string1.sorted() == string2.sorted()
}

areLettersIdentical1(string1: "qqq", string2: "qqq")

func areLetterIdentical2(string1: String, string2: String) -> Bool {
    string1.sorted() == string2.sorted()
}
areLetterIdentical2(string1: "www", string2: "www")

func pythagiras(a: Double, b: Double) -> Double {
    let input = a * a + b * b
    let root = sqrt(input)
    return root
}

let c = pythagiras(a: 3, b: 4)

func doMath() -> Int {
    5 + 5
}

func greet(name: String) -> String {
    if name == "Taylor Swift" {
        return "Oh wow!"
    } else {
        return "Hellom \(name)"
    }
}


func isUppercase(string: String) -> Bool {
    string == string.uppercased()
}

//func getUser() -> [String] {
//    ["Taylor", "Swift"]
//}

//let user = getUser()
//print("Name: \(user[0]) \(user[1])")

//func getUser1() -> [String: String] {
//    [
//        "firstName": "Taylor",
//        "lastName": "Swift"
//    ]
//}
//
//let user1 = getUser()
//print("Name: \(user1["firstName", default: "Anonymous"]) \(user1["lastName", default: "Anonymous"])") 

func getUser() -> (firstName: String, lastName: String) {
    (firstName: "Taylor", lastName: "Swift")
}

let user = getUser()
print("Name: \(user.firstName) \(user.lastName)")

func getUser1() -> (String, String) {
    ("Taylor", "Swift")
}

let user1 = getUser1()
print("Name: \(user1.0) \(user1.1)")
//
//func getUser2() -> (firstName2: String, lastname2: String) {
//    (firstName2: "Taylor", lastName2: "Swift")
//}
//
//let user2 = getUser2()
//let firstName2 = user.firstName2
//let lastName2 = user.lastName2
//
//print("Name: \(firstName2) \(lastName2)")

func rollDice(sides: Int, count: Int) -> [Int] {
    // Start with an empty array
    var rolls = [Int]()

    // Roll as many dice as needed
    for _ in 1...count {
        // Add each result to our array
        let roll = Int.random(in: 1...sides)
        rolls.append(roll)
    }
    
    // Send back all the rolls
    return rolls
}

let rolls = rollDice(sides: 6, count: 4)

func hireEmployee(name: String) { }
func hireEmployee(title: String) { }
func hireEmployee(location: String) { }

let lyric = "I see a red door and I want it painted black"
print(lyric.hasPrefix("I see"))

//func isUppercase(string: String) -> Bool {
//    string == string.uppercased()
//}
//
//let string = "HELLO, WORLD"
//let result = isUppercase(string: string)

//func isUppercase(_ string: String) -> Bool {
//    string == string.uppercased()
//}
//
//let string = "HELLO, WORLD"
//let result1 = isUppercase(string)
//
//func printTimesTables2(for: Int) {
//    for i in 1...12 {
//        print("\(i) x \(for) is \(i * for)")
//    }
//}
//
//printTimesTables2(for: 5)

func printTimesTables(for number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5)
