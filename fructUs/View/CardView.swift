//
//  CardView.swift
//  fructUs
//
//  Created by Vito Borghi on 07/01/2024.
//

import SwiftUI

struct CardView: View {
    
    @State private var isAnimating = false
    
    let image: String
    let name: String
    let description: String
    
    let destination: any View
    
    var body: some View {
        ZStack {
                
            RoundedRectangle(cornerRadius: 20)
                .foregroundStyle(
                    LinearGradient(colors: [.colorBlueberryLight, .colorBlueberryDark], startPoint: .top, endPoint: .bottom)
                )
                .frame(width: 350, height: 750)
            
            VStack {
                Section {
                    Image(image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300)
                        .scaleEffect(isAnimating ? 1 : 0.6)
                        .padding(.bottom, 30)
                    
                    
                    Text(name)
                        .foregroundStyle(.white)
                        .font(.system(size: 35, weight: .bold, design: .rounded))
                        .padding(.bottom, 15)
                    
                    Text(description)
                        .foregroundStyle(.white)
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 40)
                }
                .shadow(radius: 8, x: 6, y: 8)
                
                StartButtonView()
            
            }
        }
        .onAppear{
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
    }
}

#Preview {
    CardView(image: "blueberry", name: "Blueberry", description: "Blueberries are sweet, nutiotious and\nwildly popular fruit all over the world.", destination: ContentView())
}
