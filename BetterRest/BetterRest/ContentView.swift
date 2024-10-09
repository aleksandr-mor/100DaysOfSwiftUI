//
//  ContentView.swift
//  BetterRest
//
//  Created by Aleksandr Morozov on 10/1/24.
//

import CoreML
import SwiftUI

struct ContentView: View {
    @State private var wakeUp = defaultWakeTime
    @State private var sleepAmount = 8.0
    @State private var coffeeAmount = 1
    
    @State private var alertTitle = ""
    @State private var alertMessage = ""
    @State private var showingAlert = false
    @State private var bedTime = ""
    
    static var defaultWakeTime: Date {
        var components = DateComponents()
        components.hour = 7
        components.minute = 0
        return Calendar.current.date(from: components) ?? .now
    }
    
    var body: some View {
        NavigationStack {
            Form {
                
                Section(header: Text("When do you want to wake up?")) {
                    
                    DatePicker("Please enter a time", selection: $wakeUp, displayedComponents: .hourAndMinute)
                        .labelsHidden()
                }
                
                Section(header: Text("Desired amount of sleep")) {
                    
                    Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in: 1...12, step: 0.25)
                }
                
                Section(header: Text("Daily coffee intake")) {
                    
                    Picker("^[\(coffeeAmount) cup](inflect: true)", selection: $coffeeAmount) {
                        ForEach (1...20, id: \.self) { amount in
                            Text("^[\(amount) cup](inflect: true)")
                        }
                    }
                }
                
                Text("Your bed time is \(bedTime)")
            }
            .navigationTitle("BetterRest")
            .onChange(of: wakeUp) { _ in calculateBedTime() }
            .onChange(of: sleepAmount) { _ in calculateBedTime() }
            .onChange(of: coffeeAmount) { _ in calculateBedTime() }
        }
    }
    
    func calculateBedTime() {
        do {
            let config = MLModelConfiguration()
            let model = try SleepCalculator(configuration: config)
            
            let components = Calendar.current.dateComponents([.hour, .minute], from: wakeUp)
            let hour = (components.hour ?? 0) * 60 * 60
            let minute = (components.minute ?? 0) * 60
            
            let prediction = try model.prediction(wake: Double(hour + minute), estimatedSleep: sleepAmount, coffee: Double(coffeeAmount))
            
            let sleepTime = wakeUp - prediction.actualSleep
            
            bedTime = sleepTime.formatted(date: .omitted, time: .shortened)
        } catch {
            alertTitle = "Error"
            alertMessage = "Sorry, there was a problem calculating your badtime"
        }
    }
}

#Preview {
    ContentView()
}
