//
//  SourceLinkView.swift
//  fructUs
//
//  Created by Vito Borghi on 09/01/2024.
//

import SwiftUI

struct SourceLinkView: View {
    let fruit: String
    
    var body: some View {
        GroupBox() {
            HStack {
                Text("Content source")
                Spacer()
                Link("Wikipedia", destination: URL(string: "https://en.wikipedia.org/wiki/\(fruit.capitalized)")!)
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
        }
    }
}

#Preview {
    SourceLinkView(fruit: "blueberry")
}
