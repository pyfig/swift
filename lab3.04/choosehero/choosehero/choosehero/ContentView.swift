//
//  ContentView.swift
//  choosehero
//
//  Created by user on 03.04.2024.
//

import SwiftUI

struct Item: View {
    var img: String
    var body: some View{
        VStack{
            Image(img)
                .resizable()
                .frame(width: 50, height: 100)
                .aspectRatio(contentMode: .fit)
            Text(img)
        }
    }
}

struct ContentView: View {
    private var columns: [GridItem] = [
        GridItem(.adaptive(minimum: 50, maximum: 100))
    ]
    
    let images = ["ashe", "zen", "reaper", "dva"]
    var body: some View {
        ScrollView {
            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: 16,
                pinnedViews: [.sectionHeaders, .sectionFooters]
            ) {
                ForEach(0...10, id: \.self) {index in
                    Item(img: images[index % images.count])
                }
                .frame(width: UIScreen.main.bounds.width - 32, height: 200)
            }
        }
    }
}

#Preview {
    ContentView()
}
