struct BankAccount {
    private var funds = 0
    
    mutating func deposit(amount: Int) {
        funds += amount
    }
    
    mutating func withdraw(amount: Int) -> Bool {
        if funds >= amount {
            funds -= amount
            return true
        } else {
            return false
        }
    }
}

var account = BankAccount()
account.deposit(amount: 100)
let success = account.withdraw(amount: 200)

if success {
    print("Withdrew money successfully")
} else {
    print("Failed to get the money")
}

// account.funds -= 1000

private var learnedSections = Set<String>()

struct School {
    static var studentCount = 0
    
    static func add(student: String) {
        print("\(student) joined the school.")
        studentCount += 1
    }
}

School.add(student: "Taylor Swift")
print(School.studentCount)

struct AppData {
    static let version = "1.3 beta 2"
    static let saveFilename = "settings.json"
    static let homeURL = "https://www.hackingwithswift.com"
}
AppData.version

struct Employee {
    let username: String
    let password: String
    
    static let example = Employee(username: "cfederighi", password: "hairforceone")
}

Employee.example

struct Unwrap {
    static let appURL = "https://itunes.apple.com/app/id1440611372"
}
Unwrap.appURL

private static var entropy = Int.random(in: 1...1000)

static func getEntropy() -> Int {
    entropy += 1
    return entropy
}


struct Car {
    let model: String
    let seatCount: Int
    var gear: Int
    
    mutating func gearUP() {
        if gear + 1 > 10 {
            print("Top gear")
        } else {
            gear += 1
        }
    }
    
    mutating func gearDown() {
        if gear - 1 < 1 {
            print("You're in the lowest gear")
        } else {
            gear -= 1
        }
    }
}
