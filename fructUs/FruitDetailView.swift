//
//  FruitDetailView.swift
//  fructUs
//
//  Created by Vito Borghi on 09/01/2024.
//

import SwiftUI

struct FruitDetailView: View {
    var fruit: Fruit
    
    var body: some View {
        NavigationStack {
            ScrollView(.vertical) {
                VStack(alignment: .center, spacing: 20) {
                    
                    FruitHeaderView(fruit: fruit)
                    
                    VStack(alignment: .leading, spacing: 20) {
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundStyle(fruit.gradientColors[1])
                        
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        FruitNutritionView(fruit: fruit)
                        
                        Text("Learn more about \(fruit.title.capitalized)")
                            .bold()
                            .foregroundStyle(fruit.gradientColors[1])
                        
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        SourceLinkView(fruit: fruit.title)
                    }
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                }
                .navigationTitle(fruit.title)
                .navigationBarTitleDisplayMode(.inline)
                //.toolbar(.hidden)
            }
            .ignoresSafeArea(edges: .top)
        }
    }
}

#Preview {
    FruitDetailView(fruit: fruitData[0])
}
