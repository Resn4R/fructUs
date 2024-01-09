//
//  OnboardingView.swift
//  fructUs
//
//  Created by Vito Borghi on 07/01/2024.
//

import SwiftUI

struct OnboardingView: View {

    var body: some View {
        TabView {
            ForEach(fruitData) { fruit in
                TabView {
                    CardView(fruit: fruit)
                }
            }
        }
        .tabViewStyle(.page)
        .padding(.vertical, 20)
    }
}

#Preview {
    OnboardingView()
}
