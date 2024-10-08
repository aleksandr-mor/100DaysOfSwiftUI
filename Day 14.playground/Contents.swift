//import Foundation
//
//let opposites = [
//    "Mario": "Wario",
//    "Luigi": "Waluigi"
//]
//
//let peachOpposite = opposites["Peach"]
//
//if let marioOpposite = opposites["Mario"] {
//    print("Mario opposite is \(marioOpposite)")
//}
//
//
//var username: String? = nil
//
//if let unwrappedName = username {
//    print("We got a user: \(unwrappedName)")
//} else {
//    print("The optional was empty.")
//}
//
//func square(number: Int) -> Int {
//    number * number
//}
//
//var number: Int? = nil
////print(square(number: number))
//
//if let number = number {
//    print(square(number: number))
//}
//
//
//func getUsername() -> String? {
//    "Taylor"
//}
//
//if let username = getUsername() {
//    print("Username is \(username)")
//} else {
//    print("No username")
//}
//
//if let number = number {
//    print(square(number: number))
//}
//
//if let number {
//    print(square(number: number))
//}
//
//
//func printSquare(of number: Int?) {
//    guard let number = number else {
//        print("Missing input")
//        return
//    }
//    
//    print("\(number) x \(number) is \(number * number)")
//}
//
//var myVar: Int? = 3
//
//if let uwnrapped = myVar {
//    print("Run if myVar has a value inside")
//}
//
//guard let unwrapped = myVar else {
//    print("Run if myVar doesn't have a value inside")
//}
//
//func printSquare(of number: Int?) {
//    guard let number = number else {
//        print("Missing input")
//        
//        // 1 Exit the function here
//        return
//    }
//    // 2: "number" is still available outside of "guard"
//    print("\(number) x \(number) is \(number * number)")
//}
//
//
//func getMeaningOfLife() -> Int? {
//    42
//}
//
//func printMeaningOfLife() {
//    if let name = getMeaningOfLife() {
//        print(name)
//    }
//}
//
//func printMeaningOfLife1() {
//    guard let name = getMeaningOfLife1() else {
//        return
//    }
//    
//    print(name)
//}
//
//
//let captains = [
//    "Enterprise": "Picard",
//    "Voyager": "Janeway",
//    "Defiant": "Sisko"
//]
//
//let new = captains["Serenity", default: "N/A"]
//
//let tvShows = ["Archer", "Babylon 5", "Ted Lasso"]
//let favorite = tvShows.randomElement() ?? "None"
//
//struct Book {
//    let title: String
//    let author: String?
//}
//
//let book = Book(title: "Beowulf", author: nil)
//let author = book.author ?? "Anonymous"
//print(author)
//
//let input = ""
//let number = Int(input) ?? 0
//print(number)
//
//
//let savedData = loadSavedMessage() ?? ""
//
//let savedData = first() ?? second() ?? ""
//
//let scores = ["Picard": 800, "Data": 7000, "Troi": 900]
//let crusherScore = scores["Crusher"] ?? 0
//
//let crusherScore = scores["Crusher", default: 0]
//
//
//let names = ["Arya", "Bran", "Robb", "Sansa"]
//
//let chosen = names.randomElement()?.uppercased() ?? "No one"
//print("Next in line: \(chosen)")
//
//struct Book {
//    let title: String
//    let author: String?
//}
//
//var book: Book? = nil
//let author = book?.author?.first?.uppercased() ?? "A"
//print(author)
//
//
//let names = ["Vincent": "van Gogh", "Pablo": "Picasso", "Claud": "Monet"]
//let surnameLetter = names["Vincent"]?.first?.uppercased() ?? "?"
//
//
//enum UserError: Error {
//    case badID, networkFailed
//}
//
//func getUser(id: Int) throws -> String {
//    throw UserError.networkFailed
//}
//
//if let user = try? getUser(id: 23) {
//print("User: \(user)")
//}
//
//let user = (try? getUser(id: 23)) ?? "Anonymous"
//print(user)
//
//
//do {
//    let result = try runRiskyFunction()
//    print(result)
//} catch {
//    // it failed!
//}
//
//if let result = try? runRiskyFunction() {
//    print(result)
//}


func pickTheNumber(_ input: [Int]?) -> Int { return input?.randomElement() ?? Int.random(in: 1...100) }
