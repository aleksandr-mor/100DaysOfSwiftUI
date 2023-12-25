let platforms = ["iOS", "macOS", "tvOS", "watchOS"]

for os in platforms {
    print("Swift works great on \(os).")
}

for i in 1...12 {
    print("5 x \(i) is \(5 * i)")
}

for i in 1...12 {
    print("The \(i) times table:")
    
    for j in 1...12 {
        print(" \(j) x \(i) is \(j * i)")
    }
    
    print()
}

for i in 1...5 {
    print("Counting from 1 through 5: \(i)")
}

print()

for i in 1...5 {
    print("Counting 1 up to 5: \(i)")
}
print()

for i in 1..<5 {
    print("Counting 1 up to 5: \(i)")
}

var lyric = "Haters gonna"

for _ in 1...5 {
    lyric += " hate"
}

print(lyric)


let names = ["Sterling", "Cyril", "Lana", "Ray", "Pam"]

for name in names {
    print("\(name) is a secret agent")
}

let names1 = ["Sterling", "Cyril", "Lana", "Ray", "Pam"]

for _ in names1 {
    print("[CENSORED] is a secret agent!")
}

let names2 = ["Piper", "Alex", "Suzanne", "Gloria"]

print(names2[0])
print(names2[1...3])
print(names2[1...])


