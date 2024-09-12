//
//  ContentView.swift
//  TempConverter
//
//  Created by Aleksandr Morozov on 9/9/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var inputValue = ""
    @State private var inputUnit = "Celsius"
    @State private var outputUnit = "Fahrenheit"
    @FocusState private var inputIsFocused: Bool
    
    let units = ["Celsius", "Fahrenheit", "Kelvin"]
    
    // Convertin unit to base - Celsius, then to target unit
    var convertedValue: Double {
        guard let value = Double(inputValue) else { return 0.0 }
        
        // Convert input to Celsius
        let celsiusValue: Double
        switch inputUnit {
        case "Fahrenheit":
            celsiusValue = (value - 32) * 5 / 9
        case "Kelvin":
            celsiusValue = value - 273.15
        default:
            celsiusValue = value
        }
        
        // Convert Celsius to output unit
        switch outputUnit {
        case "Fahrenheit":
            return celsiusValue * 9 / 5 + 32
        case "Kelvin":
            return celsiusValue + 273.15
        default:
            return celsiusValue
        }
    }
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Enter value", text: $inputValue)
                        .keyboardType(.decimalPad)
                        .focused($inputIsFocused)
                }
                
                Section("Input unit") {
                    Picker("", selection: $inputUnit) {
                        ForEach(units, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
                Section("Output unit") {
                    Picker("", selection: $outputUnit) {
                        ForEach(units, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
                
                Section ("Converted value") {
                    Text(convertedValue.formatted())
                }
            }
            .navigationTitle("Temperature Converter")
            .toolbar {
                if inputIsFocused {
                    Button("Done") {
                        inputIsFocused = false
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
