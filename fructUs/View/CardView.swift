//
//  CardView.swift
//  fructUs
//
//  Created by Vito Borghi on 07/01/2024.
//

import SwiftUI

struct CardView: View {
    
    @State private var isAnimating = false
    
    var fruit: Fruit
    
    
    var body: some View {
        ZStack {
                
            RoundedRectangle(cornerRadius: 20)
                .foregroundStyle(
                    LinearGradient(colors: fruit.gradientColors, startPoint: .top, endPoint: .bottom)
                )
                .frame(width: 350, height: 700)
            
            VStack {
                Section {
                    Image(fruit.image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300)
                        .scaleEffect(isAnimating ? 1 : 0.6)
                        .padding(.bottom, 30)
                    
                    
                    Text(fruit.title)
                        .foregroundStyle(.white)
                        .font(.system(size: 35, weight: .bold, design: .rounded))
                        .padding(.bottom, 15)
                    
                    Text(fruit.headline)
                        .font(.system(size: 21))
                        .foregroundStyle(.white)
                        .frame(width: 300)
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
    CardView(fruit: fruitData[0])
}
