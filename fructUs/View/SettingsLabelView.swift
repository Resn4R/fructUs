//
//  SettingsLabelView.swift
//  fructUs
//
//  Created by Vito Borghi on 10/01/2024.
//

import SwiftUI

struct SettingsLabelView: View {
    let label: String
    let image: String
    
    var body: some View {
        HStack {
            Text(label.uppercased()).bold()
            Spacer()
            Image(systemName: image)
        }
    }
}

#Preview {
    SettingsLabelView(label: "fructUs", image: "info.circle")
}
