//
//  SettingsView.swift
//  fructUs
//
//  Created by Vito Borghi on 10/01/2024.
//

import SwiftUI

struct SettingsView: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                
                VStack(spacing: 20) {
                    GroupBox {
                        Text("stuff")
                    } label: {
                        HStack {
                            Text("fructUs".uppercased()).bold()
                            Spacer()
                            Image(systemName: "info.circle")
                        }
                    }
                }
                
            }
            .navigationTitle("Settings")
            .navigationBarTitleDisplayMode(.large)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button{
                        dismiss()
                    } label: {
                        Image(systemName: "xmark")
                    }
                }
            }
        }
    }
}

#Preview {
    SettingsView()
}
