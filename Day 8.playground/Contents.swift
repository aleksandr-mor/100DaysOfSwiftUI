enum PasswordError: Error {
    case higherLower, noMatch
}

func root(of zahl: Int) throws -> String {
    guard zahl > 1 && zahl < 10000 else {
        throw PasswordError.higherLower
    }

    for i in 1...100 {
        if zahl == i * i {
            return "\(i)"
        }
    }

    throw PasswordError.noMatch
}

do {
    let result = try root(of: 81)
    print("The root is \(result)")
} catch PasswordError.higherLower {
    print("Out of bounds")
} catch PasswordError.noMatch {
    print("No Root")
} catch {
    print("Help")
}
