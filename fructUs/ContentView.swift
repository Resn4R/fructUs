//
//  ContentView.swift
//  fructUs
//
//  Created by Vito Borghi on 07/01/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isSheetShowing = false
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    var body: some View {
        NavigationStack {
            List(fruitData) { fruit in
                NavigationLink(destination: FruitDetailView(fruit: fruit)) {
                    ListView(fruit: fruit)
                        .padding(.vertical, 4)
                }
            }
            .navigationTitle("Fruits")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        isSheetShowing.toggle()
                    } label: {
                        Image(systemName: "slider.horizontal.3")
                    }
                }
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        isOnboarding = true
                    } label: {
                        Image(systemName: "rectangle.portrait.on.rectangle.portrait")
                    }
                }
            }
            .sheet(isPresented: $isSheetShowing) {
                SettingsView()
                    .presentationDetents([.medium, .large])
            }
            
        }
    }
}

#Preview {
    ContentView()
}
