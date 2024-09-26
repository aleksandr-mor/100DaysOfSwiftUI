//
//  ContentView.swift
//  WeSplit
//
//  Created by Aleksandr Morozov on 9/6/24.
//

import SwiftUI

struct ContentView: View {
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPrecentage = 20
    @FocusState private var amountIsFocused: Bool
    
    let tipPercentages = 0..<101
    
    var totalPerPerson: Double {
        let peopleCount = Double(numberOfPeople + 2)
        let tipSelection = Double(tipPrecentage)
        let tipValue = checkAmount / 100 * tipSelection
        let grandTotal =  checkAmount + tipValue
        let amountPerPerson = grandTotal / peopleCount
        
        return amountPerPerson
    }
    
    var totalAmount: Double {
        let tipSelection = Double(tipPrecentage)
        let tipValue = checkAmount / 100 * tipSelection
        let grandTotal = checkAmount + tipValue
        return grandTotal
    }
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    TextField("Amount", value: $checkAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                        .keyboardType(.decimalPad)
                        .focused($amountIsFocused)
                    
                    Picker("Number of people", selection: $numberOfPeople) {
                        ForEach(2..<100) {
                            Text("\($0) people")
                        }
                    }
                }
                
                Section ("How much do you want to tip?") {
                    Picker("Tip percentage", selection: $tipPrecentage) {
                        
                        ForEach(tipPercentages, id: \.self) {
                            Text($0,  format: .percent)
                        }
                    }
                    .pickerStyle(.navigationLink)
                }
                
                Section ("Amount per person") {
                    Text(totalPerPerson, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                }
                Section ("Total amount"){
                    Text(totalAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                        .foregroundStyle(tipPrecentage == 0 ? .red : .primary)
                }
            }
            .navigationTitle("WeSplit")
            .toolbar  {
                if amountIsFocused {
                    Button("Done") {
                        amountIsFocused = false
                    }
                }
            }
        }
    }
}
#Preview {
    ContentView()
}
