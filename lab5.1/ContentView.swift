//
//  ContentView.swift
//  lab5.1
//
//  Created by user on 02.04.2024.
//

import SwiftUI

struct AppRow: View {
    var name: String
    var img: String
    var body: some View{
        HStack{
            Image(img)
                .resizable()
                .frame(width: 30, height: 30)
            Text(name)
        }
    }
}
struct ContentView: View {
    var body: some View {
        List {
            AppRow(name: "Додо Пицца", img: "dodo")
            AppRow(name: "Вкусно и Точка", img: "tochka")
            AppRow(name: "Rostic's", img: "rostics")
        }
        
    }
}

#Preview {
    ContentView()
}
