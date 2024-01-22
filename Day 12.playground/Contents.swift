class Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var newGame = Game()
newGame.score += 10


class Employee {
    let hours: Int
    
    func printSummary() {
        print("I work \(hours) hours a day.")
    }
    
    init(hours: Int) {
        self.hours = hours
    }
}

class Developer: Employee {
    func work() {
        print("I'm writing code for \(hours) hours.")
    }
    override func printSummary() {
        print("I'm a developer who will sometimes work \(hours) hours a day, but other times spend hours arguing about whether code should be indented using tabs or spaces.")
    }
}

class Manager: Employee {
    func work() {
        print("I'm going to meeting for \(hours) hours.")
    }
}

let robert = Developer(hours: 8)
let joseph = Manager(hours: 10)
robert.work()
joseph.work()

let novall = Developer(hours: 8)
novall.printSummary()


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

let teslaX = Car(isElectric: true, isConvertible: false)

class User {
    var username = "Anonymous"
}

var user1 = User()

var user2 = user1
user2.username = "Taylor"

print(user1.username)
print(user2.username)

class User1 {
    var username = "Anonymous"
    
    func copy() -> User1 {
        let user = User1()
        user.username = username
        return user
    }
}


var message = "Welcome"
var greeting = message
greeting = "Hello"


class User3 {
    let id: Int
    
    init(id: Int) {
        self.id = id
        print("User \(id): I'm alive!")
    }
    
    deinit {
        print("User \(id): I'm dead!")
    }
}

for i in 1...3 {
    let user = User3(id: i)
    print("User \(user.id): I'm in control")
}

var users = [User3]()

for i in 1...3 {
    let user = User3(id: i)
    print("User \(user.id): I'm in control!")
    users.append(user)
}

print("Loop is finished!")
users.removeAll()
print("Array is clear!")


class User4 {
    var name = "Alex"
}

let user = User4()
user.name = "Olga"
print(user.name)

class User5 {
    var name = "Alex"
}

var user5 = User5()
user5.name = "Olga"
user5 = User5()
print(user5.name)

var number = 5
number = 6

class Animal {
    let legs: Int
    init(legs: Int) {
        self.legs = max(legs, 0)
    }
}

class Dog: Animal {
    init() { 
        super.init(legs: 4)
    }
    public func speak() {
        print("Bark!")
    }
}

class Cat: Animal {
    let isTame: Bool
    init(isTame: Bool) {
        self.isTame = isTame
        super.init(legs: 4)
    }
   public func speak() {
        print("Meow!")
    }
}

class Corgi: Dog {
    override func speak() {
        print("Corgi bark!")
    }
}

class Poodle: Dog {
    override func speak() {
        print("Poodle bark!")
    }
}

class Persian: Cat {
    init() {
        super.init(isTame: true)
    }
    override func speak() {
        print("Persian meow!")
    }
}

class Lion: Cat {
    init() {
        super.init(isTame: true)
    }
    override func speak() {
        print("Lion roar!")
    }
}
