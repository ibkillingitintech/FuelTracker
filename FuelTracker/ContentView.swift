//
//  ContentView.swift
//  FuelTracker
//
//  Created by Ibraheem k. Rawlinson on 4/28/25.
//

import SwiftUI

struct ContentView: View {
    @State private var energyLevel: Int = 3
    @State private var wanterIntake: String = ""
    @State private var notes: String = ""
    
    
    var body: some View {
        NavigationStack{
            Form{
                Section{
                    Button(action: {
                        // Action to log a new entry (later)
                    }) {
                        Text("Log New Entry")
                            .frame(maxWidth: .infinity)
                            .padding()
                    }
                }
                Section(header: Text("Energy Level")){
                    Picker("Energy Level", selection: $energyLevel){
                        ForEach(1...5, id: \.self){
                            level in
                            Text("\(level)")
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
                Section(header: Text("Water Intake (oz)")){
                    TextField("Enter amount", text: $wanterIntake)
                        .keyboardType(.numberPad)
                }
                Section(header: Text("Notes")){
                    TextEditor(text: $notes)
                        .frame(height: 100)
                }
            }
            .navigationTitle(" Daily Fuel Tracker")
        }
    }
}

#Preview {
    ContentView()
}
