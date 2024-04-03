//
//  ContentView.swift
//  disclosuregroup
//
//  Created by user on 03.04.2024.
//

import SwiftUI

struct ContentView: View {
    // 1.
    @State private var settingsIsExpanded = true
    @State private var batteryIsExpanded = false
    @State private var soundIsExpanded = false
    @State private var isLowPowerModeOn = true
    @State private var volume: Double = 0
    
    var body: some View {
        VStack {
            // 2.
            DisclosureGroup("Settings", isExpanded: $settingsIsExpanded) {
                DisclosureGroup("Battery", isExpanded: $batteryIsExpanded) {
                    Toggle("Low Power Mode", isOn: $isLowPowerModeOn).padding()
                }
                .padding([.top, .leading, .trailing], 20.0)
                
                // 4.
                DisclosureGroup(
                    isExpanded: $soundIsExpanded,
                    content: {
                        Slider(value: $volume, in: 0...100)
                    }) {
                        HStack(spacing: 20) {
                            Image(systemName: "speaker")
                            Text("Sound")
                        }
                    }
                    // 5.
                    .accentColor(.red)
                    .padding()
            }
            .padding()
            
            Spacer()
        }
    }
}


#Preview {
    ContentView()
}
