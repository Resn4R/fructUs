//
//  fructUsApp.swift
//  fructUs
//
//  Created by Vito Borghi on 07/01/2024.
//

import SwiftUI

@main
struct fructUsApp: App {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    var body: some Scene {
        WindowGroup {
            
          ZStack {
                if isOnboarding == true {
                        OnboardingView()
                            .transition( AnyTransition.opacity.animation(.easeInOut(duration: 0.3)) )
                }
                else {
                    ContentView()
                        .transition( AnyTransition.scale.animation(.easeInOut(duration: 0.3)) )
                }
            }
            
        }
    }
}
