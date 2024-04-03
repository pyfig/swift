//
//  ContentView.swift
//  7containers
//
//  Created by user on 03.04.2024.
//

import SwiftUI

struct CircleView: View {
    @State var label: String
    
    var body: some View {
        ZStack {
            Circle()
                .fill(Color.yellow)
                .frame(width: 50, height: 50)
            Text(label)
        }
    }
}

struct AbobaCircleView: View {
    @State var label: String
    
    var body: some View {
        ZStack {
            Circle()
                .fill(Color.yellow)
                .frame(width: 50, height: 50)
            Text(label)
        }
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            Divider()
            ScrollView(.horizontal) {
                HStack(spacing: 10) {
                    ForEach(0..<10) { index in
                        CircleView(label: "\(index)")
                    }
                }.padding()
            }.frame(height: 100)
            Divider()
            Spacer()
        }
    }
}
struct AbobaContentView: View {
    var body: some View {
        HStack {
            Divider()
            ScrollView(.vertical) {
                VStack(spacing: 10) {
                    ForEach(0..<20) { index in
                        AbobaCircleView(label: "\(index)")
                    }
                }.padding()
            }.frame(width: 100)
            Divider()
            Spacer()
        }
    }
}



#Preview {
    AbobaContentView()
    // ContentView()
}
