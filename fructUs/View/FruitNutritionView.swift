//
//  FruitNutritionView.swift
//  fructUs
//
//  Created by Vito Borghi on 10/01/2024.
//

import SwiftUI

struct FruitNutritionView: View {
    
    let fruit: Fruit
    let nutrients: [String] = ["Energy", "Sugar","Fat","Protein","Vitamins","Minerals"]
    
    var body: some View {
        GroupBox() {
            
            DisclosureGroup {
                ForEach(0..<nutrients.count) { item in
                    
                    Divider().padding(.vertical, 2)
                    
                    HStack {
                        Text(nutrients[item])
                            .foregroundStyle(fruit.gradientColors[1])
                            .bold()

                        Spacer(minLength: 25)
                        
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
                
            } label: {
                Label("Nutritional values for 100g", systemImage: "info.circle")
            }
            
        }
    }
}

#Preview {
    FruitNutritionView(fruit: fruitData[0])
        .preferredColorScheme(.dark)
        .previewLayout(.fixed(width: 375, height: 480))
        .padding()
}
