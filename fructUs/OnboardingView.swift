//
//  OnboardingView.swift
//  fructUs
//
//  Created by Vito Borghi on 07/01/2024.
//

import SwiftUI

struct OnboardingView: View {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool?

    var body: some View {
        NavigationStack {
            TabView {
                ForEach(fruitData) { fruit in
                    CardView(fruit: fruit)
                }
            }
            .tabViewStyle(.page)
            .padding(.vertical, 20)
            
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        isOnboarding = false
                    } label: {
                        Image(systemName: "list.bullet")
                    }
                }
            }
        }
    }
}

#Preview {
    OnboardingView()
}
