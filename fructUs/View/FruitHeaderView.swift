//
//  FruitHeaderView.swift
//  fructUs
//
//  Created by Vito Borghi on 09/01/2024.
//

import SwiftUI

struct FruitHeaderView: View {
    var fruit: Fruit
    
    @State private var isAnimating = false
    
    var body: some View {
        ZStack {
            LinearGradient(colors: fruit.gradientColors, startPoint: .top, endPoint: .bottom)
            
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(radius: 8, x: 6, y: 8)
                .padding(.vertical, 20)
                .scaleEffect( isAnimating ? 1 : 0.6)
        }
        .frame(height: 440)
        .onAppear{
            withAnimation(.easeOut(duration: 1)) {
                isAnimating = true
            }
        }
    }
}

#Preview {
    FruitHeaderView(fruit: fruitData[0])
}
