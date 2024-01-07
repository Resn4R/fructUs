//
//  StartButtonView.swift
//  fructUs
//
//  Created by Vito Borghi on 07/01/2024.
//

import SwiftUI

struct StartButtonView: View {
    //let destination: any View
    
    var body: some View {
        Button {
            //action
        } label: {
            HStack {
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .font(.title3)
            .foregroundStyle(.white)
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(Color.white, lineWidth: 1.25)
            )
        }
    }
}

#Preview {
    StartButtonView()
        .preferredColorScheme(.dark)
}
