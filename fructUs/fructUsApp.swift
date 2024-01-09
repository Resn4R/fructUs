//
//  fructUsApp.swift
//  fructUs
//
//  Created by Vito Borghi on 07/01/2024.
//

import SwiftUI

@main
struct fructUsApp: App {
    
    @AppStorage("isOnboarding") var isOnboarding = true
    var body: some Scene {
        WindowGroup {
            
            if isOnboarding { OnboardingView() }
            else { ContentView() }
            
        }
    }
}
