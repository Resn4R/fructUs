//
//  FruitModel.swift
//  fructUs
//
//  Created by Vito Borghi on 09/01/2024.
//

import SwiftUI

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
