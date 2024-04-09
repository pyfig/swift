//
//  ContentView.swift
//  tema8
//
//  Created by user on 09.04.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("Image")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .clipShape(Circle())
                .frame(width: 150, height: 200)
                .overlay(Circle() .stroke(Color.gray, lineWidth: 3))
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
