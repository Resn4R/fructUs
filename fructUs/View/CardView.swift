//
//  CardView.swift
//  fructUs
//
//  Created by Vito Borghi on 07/01/2024.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        ZStack {
                
            VStack {
                Section {
                    Image("blueberry")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300)
                    
                    
                    Text("Blueberry")
                        .foregroundStyle(.white)
                        .font(.system(size: 35, weight: .bold, design: .rounded))
                    
                    Text("Blueberries are sweet, nutiotious and\nwildly popular fruit all over the world.")
                        .foregroundStyle(.white)
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 40)
                }
                .shadow(radius: 8, x: 6, y: 8)
                
                StartButtonView()
            
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .background(
            LinearGradient(colors: [.colorBlueberryLight, .colorBlueberryDark], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
        )
    }
}

#Preview {
    CardView()
}
