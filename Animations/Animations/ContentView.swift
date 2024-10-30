//
//  ContentView.swift
//  Animations
//
//  Created by Aleksandr Morozov on 10/29/24.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount = 1.0
    var body: some View {
        Button("Tap Me") {
//            animationAmount += 1
        }
        .padding(50)
        .background(.red)
        .foregroundStyle(.white)
        .clipShape(.circle)
        .overlay(
            Circle()
            .stroke(.red)
            .scaleEffect(animationAmount)
            .opacity(2-animationAmount)
            .animation(
                .easeOut(duration: 1)
                .repeatForever(autoreverses: false),
                value: animationAmount
            )
            )
        .onAppear {
            animationAmount = 2
        }
    }
}

#Preview {
    ContentView()
}
