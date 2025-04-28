//
//  ContentView.swift
//  FuelTracker
//
//  Created by Ibraheem k. Rawlinson on 4/28/25.
//

import SwiftUI

struct ContentView: View {
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
                    // Pciker/slider will go here
                }
                Section(header: Text("Water Intake (oz)")){
                    // text feild goes here
                }
                Section(header: Text("Notes")){
                   // Text editor goes here
                }
            }
            .navigationTitle(" Daily Fuel Tracker")
        }
    }
}

#Preview {
    ContentView()
}
