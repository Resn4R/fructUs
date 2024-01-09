//
//  ListView.swift
//  fructUs
//
//  Created by Vito Borghi on 09/01/2024.
//

import SwiftUI

struct ListView: View {
    
    var fruit: Fruit
    
    var body: some View {
        HStack {
            
            Image(fruit.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(radius: 3, x: 2, y: 2)
                .background(
                    LinearGradient(colors: fruit.gradientColors, startPoint: .top, endPoint: .bottom)
                )
                .clipShape(RoundedRectangle(cornerRadius: 8))
            
            VStack(alignment: .leading, spacing: 5) {
                Text(fruit.title)
                    .font(.title2)
                    .bold()
                    
                Text(fruit.headline)
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }
            
        }
    }
}

#Preview {
    ListView(fruit: fruitData[0])
}
