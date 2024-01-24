//import Foundation
//
//func commute(distance: Int, using vehicle: Car) {
//    // lots of code here
//}
//
//func commute(distance: Int, using vehicle: Train) {
//    
//}
//
//func commute(distance: Int, using vehicle: Bus) {
//    
//}
//
//protocol Vehicle {
//    func estimateTime(for distance: Int) -> Int
//    func travel(distance: Int)
//}
//
//struct Car: Vehicle {
//    let name = "Car"
//    var currentPassengers = 1
//    
//    func estimateTime(for distance: Int) -> Int {
//        distance / 50
//    }
//    
//    func travel(distance: Int) {
//        print("I'm driving \(distance) km.")
//    }
//    
//    func openSunroof() {
//        print("It's a nice day!")
//    }
//}
//
//func commute(distance: Int, using vehicle: Car) {
//    if vehicle.estimateTime(for: distance) > 100 {
//        print("That's too slow! I'll try a different vihacle.")
//    } else {
//        vehicle.travel(distance: distance)
//    }
//}
//
//let car = Car()
//commute(distance: 100, using: car)
//
//func commute(distance: Int, using vehicle: Vehicle) {
//    
//}
//
//struct Bicycle: Vehicle {
//    let name = "Bicycle"
//    var currentPassengers = 1
//    
//    func estimateTime(for distance: Int) -> Int {
//        distance / 10
//    }
//    
//    func travel(distance: Int) {
//        print("I'm cycling \(distance) km.")
//    }
//}
//
//let bike = Bicycle()
//commute(distance: 50, using: bike)
//
//protocol Vehicle {
//    var name: String { get }
//    var currentPassengers: Int { get set }
//    func estimateTime(for distance: Int) ->
//    func travel(distance: Int)
//}
//
//func getTravelEstimates(using vehicles: [Vehicle], distance: Int) {
//    for vehicle in vehicles {
//        let estimate = vehicle.estimateTime(for: distance)
//        print("\(vehicle.name): \(estimate) hours to travel \(distance)km.")
//    }
//}
//
//getTravelEstimates(using: [car, bike], distance: 150)
//
//struct Book {
//    var name: String
//}
//
//func buy(_ book: Book) {
//    print("I'm buying \(book.name)")
//}
//
//protocol Purchaseable {
//    var name: String { get set }
//}
//
//struct Book: Purchaseable {
//    var name: String
//    var author: String
//}
//
//struct Movie: Purchaseable {
//    var name: String
//    var actors: [String]
//}
//
//struct Car: Purchaseable {
//    var name: String
//    var manufacturer: String
//}
//
//struct Coffee: Purchaseable {
//    var name: String
//    var strength: Int
//}
//
//func buy(_ item: Purchaseable) {
//    print("I'm buying \(item.name)")
//}
//
//func getRandomNumber() -> Int {
//    Int.random(in: 1...6)
//}
//
//func getRandomBool() -> Bool {
//    Bool.random()
//}
//
//print(getRandomNumber() == getRandomNumber())
//
//func getRandomNumber() -> Equatable {
//    Int.random(in: 1...6)
//}
//
//func getRandomBool() -> Equatable {
//    Bool.random()
//}
//
//func getRandomNumber() -> some Equatable {
//    Int.random(in: 1...6)
//}
//
//func getRandomBool() -> some Equatable {
//    Bool.random()
//}
//
//
//var quote = "   The truth is rarely pure and never simple   "
//
//let trimmed = quote.trimmingCharacters(in: .whitespacesAndNewlines)
//
//extension String {
//    func trimmed() -> String {
//        self.trimmingCharacters(in: .whitespacesAndNewlines)
//    }
//}
//
//let trimmed = quote.trimmed()
//
//func trim(_ string: String) -> String {
//    string.trimmingCharacters(in: .whitespacesAndNewlines)
//}
//
//let trimmed2 = trim(quote)
//
//var lines: [String] {
//    self.components(separatedBy: .newlines)
//}
//
//let lyrics = """
//But I keep cruising
//Can't stop, won't stop moving
//It's like I got this music in my mind
//Saying it's gonna be alright
//"""
//
//print(lyrics.lines.count)
//
//
//struct Book1 {
//    let title: String
//    let pageCount: Int
//    let readingHours: Int
//    
//    init(title: String, pageCount: Int) {
//        self.title = title
//        self.pageCount = pageCount
//        self.readingHours = pageCount / 50
//    }
//}
//
//let lotr = Book1(title: "Lord of the Rings", pageCount: 1178, readingHours: 24)
//
//extension Book1 {
//    init(title: String, pageCount: Int) {
//        self.title = title
//        self.pageCount = pageCount
//        self.readingHours = pageCount / 50
//    }
//}


let guests = ["Mario", "Luigi", "Peach"]

if guests.isEmpty == false {
    print("Guest count: \(guests.count)")
}

if !guests.isEmpty {
    print("Guest count: \(guests.count)")
}

extension Array {
    public var isNotEmpty: Bool {
        isEmpty == false
    }
}

if guests.isNotEmpty {
    print("Guest count: \(guests.count)")
}

extension Collection {
    var isNotEmpty: Bool {
        isEmpty == false
    }
}

protocol Person {
    var name: String { get }
    func sayHello()
}

extension Person {
    func sayHello() {
        print("Hi, I'm \(name)")
    }
}

struct Employee: Person {
    let name: String
}

let taylor = Employee(name: "Taylor Swift")
taylor.sayHello()


let numbers = [4, 8, 15, 16]
let allEven = numbers.allSatisfy { $0.isMultiple(of: 2) }

let number2 = Set([4, 8, 15, 16])
let allEven2 = number2.allSatisfy { $0.isMultiple(of: 2) }
let numbers3 = ["four": 4, "eight": 8, "fifteen": 15, "sixteen": 16]
let allEven3 = numbers3.allSatisfy { $0.value.isMultiple(of: 2) }


protocol Building {
    var roomCount: Int { get }
    var price: Int { get }
    var agentName: String { get }
    func summary()
}

extension Building {
    func summary() {
        print("Object has \(roomCount) rooms, price: \(price), call \(agentName)")
    }
}

struct House: Building {
    var roomCount = 5
    
    var price = 10_000
    
    var agentName = "James Bond"
}

struct Office: Building {
    var roomCount = 20
    
    var price = 100_000
    
    var agentName = "Richy Rich"
}

let house = House()
let office = Office()

house.summary()
office.summary()
