//
//  ContentView.swift
//  RockPaperScissors
//
//  Created by Aleksandr Morozov on 9/29/24.
//

import SwiftUI

struct ContentView: View {
    @State var moves = ["🪨", "📄", "✂️"]
    @State var appChoice = ""
    @State var shouldWin: Bool = Bool.random()
    @State var score = 0
    
    var body: some View {
        VStack {
            Text("Score: \(score)")
                .font(.title)
                .padding()
            
            Text("App's Move: \(appChoice.isEmpty ? "?" : appChoice)")
                .padding()
            
            if shouldWin {
                Text("You should win!")
                    .font(.title)
                    .foregroundColor(.green)
                    .padding()
            } else {
                Text("You should lose!")
                    .font(.title)
                    .foregroundColor(.red)
                    .padding()
            }
            
            HStack {
                ForEach(moves, id: \.self) { move in
                    Button(action: {
                        playerMove(move)
                        appChoice = moves[Int.random(in: 0..<moves.count)]
                        shouldWin.toggle()
                    }) {
                        Text(move)
                            .font(.largeTitle)
                            .padding()
                            .background(Color.blue.opacity(0.7))
                            .foregroundColor(.white)
                            .cornerRadius(10)
                        
                    }
                    .padding()
                }
            }
            
            Button("Start New Round") {
                appChoice = moves[Int.random(in: 0..<moves.count)]
                shouldWin.toggle()
            }
            .padding()
        }
        .padding()
    }
    
    func playerMove(_ playerChoice: String) {
        // Define win/loss logic using emoji equivalents
        let winningMoves = ["🪨": "✂️", "📄": "🪨", "✂️": "📄"]
        
        if let appMove = winningMoves[appChoice] {
            if shouldWin && playerChoice == appMove {
                score += 1
            } else if !shouldWin && playerChoice != appMove {
                score += 1
            } else {
                score -= 0
            }
        }
    }
}

#Preview {
    ContentView()
}
//The important part is making three buttons that respond to the player’s move: Rock, Paper, or Scissors.
//Use the font() modifier to adjust the size of your text. If you’re using emoji for the three moves, they also scale. Tip: You can ask for very large system fonts using .font(.system(size: 200)) – they’ll be a fixed size, but at least you can make sure they are nice and big!


//Start off with the simplest logic you can: three buttons, each with logic that says “the player tapped rock, the player was trying to win, and the app chose scissors, so add 1 point.”
//Once you have that working, look for a way to simplify your logic such as an array of which items beat each move. For example, if your moves array was ["Rock", "Paper", "Scissors"] your array of winning moves would be ["Paper", "Scissors", "Rock"].
//You don’t need to add graphics if you don’t want to; just some text views and buttons is enough. Why not try emoji?
