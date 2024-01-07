//
//  OnboardingView.swift
//  fructUs
//
//  Created by Vito Borghi on 07/01/2024.
//

import SwiftUI

struct OnboardingView: View {
    
    let fruits = ["apple","blueberry","cherry","gooseberry","grapefruit","lemon","lime","mango","pear","plum","pomegranate","strawberry","watermelon"]
    
    let descriptions = [
        "",
        "Blueberries are sweet, nutiotious and\nwildly popular fruit all over the world.",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
    ]
    
    let colours: [[Color]] = [
        [.colorAppleLight, .colorAppleDark],
        [.colorBlueberryLight, .colorBlueberryDark],
        [.colorCherryLight, .colorCherryDark],
        [.colorGooseberryLight, .colorGooseberryDark],
        [.colorGrapefruitLight, .colorGrapefruitDark],
        [.colorLemonLight, .colorLemonDark],
        [.colorLimeLight, .colorLimeDark],
        [.colorMangoLight, .colorMangoDark],
        [.colorPearLight, .colorPearDark],
        [.colorPlumLight, .colorPlumDark],
        [.colorPomegranateLight, .colorPomegranateDark],
        [.colorStrawberryLight, .colorStrawberryDark],
        [.colorWatermelonLight, .colorWatermelonDark],
    ]
    
    var body: some View {
        TabView {
            ForEach(0..<fruits.count) { i in
                CardView(image: fruits[i], name: fruits[i].capitalized, description: descriptions[i], colours: colours[i])
            }
        }
        .tabViewStyle(.page)
        .padding(.vertical, 20)
    }
}

#Preview {
    OnboardingView()
}
