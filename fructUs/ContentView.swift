//
//  ContentView.swift
//  fructUs
//
//  Created by Vito Borghi on 07/01/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List(fruitData) { fruit in
                ListView(fruit: fruit)
                    .padding(.vertical, 4)
            }
            .navigationTitle("Fruits")
        }
    }
}

#Preview {
    ContentView()
}
