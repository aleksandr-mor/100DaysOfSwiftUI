//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Aleksandr Morozov on 9/23/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.red)
        
    }
}

#Preview {
    ContentView()
}
