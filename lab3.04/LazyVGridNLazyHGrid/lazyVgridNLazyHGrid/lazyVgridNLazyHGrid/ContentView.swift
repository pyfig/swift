//
//  ContentView.swift
//  lazyVgridNLazyHGrid
//
//  Created by user on 03.04.2024.
//

import SwiftUI

struct ContentView: View {
    private var columns: [GridItem] = [
        GridItem(.fixed(50), spacing: 16, alignment: .leading),
        GridItem(.fixed(75)),
              GridItem(.fixed(100), spacing: 16)
          ]
          
          var body: some View {
              ScrollView {
                  LazyVGrid(
                      columns: columns,
                      alignment: .center,
                      spacing: 16,
                      pinnedViews: [.sectionHeaders, .sectionFooters]
                  ) {
                      Section(header: Text("Section 1").font(.title)) {
                          ForEach(0...10, id: \.self) { index in
                              Color.red
                          }
                      }
                      
                      Section(header: Text("Section 2").font(.title)) {
                          ForEach(11...20, id: \.self) { index in
                              Color.green
                          }
                      }
                  }
              }
          }
      }


#Preview {
    ContentView()
}
