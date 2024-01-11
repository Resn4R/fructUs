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
                        Divider()
                            .padding(.vertical, 4)
                        
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .clipShape(RoundedRectangle(cornerRadius: 9))
                            
                            Text("Most fruits are naturally low in fat, sodium and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins and much more.")
                                .font(.footnote)
                        }
                    } label: {
                        SettingsLabelView(label: "fructUs", image: "info.circle")
                    }
                    
                    Spacer()
                    
                    GroupBox {
                        
                        Divider().padding(.vertical, 2)
                        
                        CustomListRowView(rowLabel:"Application", rowIcon: "apps.iphone", rowContent: "fructUs", rowTintColor: .blue)
                        
                        Divider().padding(.vertical, 2)

                        CustomListRowView(rowLabel: "Compatibility", rowIcon: "info.circle", rowContent: "iOS, iPadOS", rowTintColor: .red)
                        
                        Divider().padding(.vertical, 2)

                        CustomListRowView(rowLabel: "Technology", rowIcon: "swift", rowContent: "Swift", rowTintColor: .orange)
                        
                        Divider().padding(.vertical, 2)

                        CustomListRowView(rowLabel: "Version", rowIcon: "gear", rowContent: "1.0", rowTintColor: .purple)
                        
                        Divider().padding(.vertical, 2)

                        CustomListRowView(rowLabel: "Developer", rowIcon: "ellipsis.curlybraces", rowContent: "Vito Borghi", rowTintColor: .mint)
                        
                        Divider().padding(.vertical, 2)

                        CustomListRowView(rowLabel: "Designer", rowIcon: "paintpalette", rowContent: "Robert Petras", rowTintColor: .pink)
                        
                        Divider().padding(.vertical, 2)

                        CustomListRowView(rowLabel: "Linkedin", rowIcon: "globe", rowTintColor: .indigo, rowLinkLabel: "Vito Borghi", rowLinkDestination: "https://www.linkedin.com/in/vito-borghi/")
                        
                        Divider().padding(.vertical, 2)

                        CustomListRowView(rowLabel: "GitHub", rowIcon: "book.pages", rowTintColor: .gray, rowLinkLabel: "Resn4R", rowLinkDestination: "https://github.com/Resn4R")
                        
                    } label: {
                        HStack{
                            Text("About the app")
                            
                            Spacer()
                            
                            Image(systemName: "apps.iphone")
                        }
                    }
                        HStack{
                            Spacer()
                            Text("Copyright © All rights reserved.")
                            Spacer()
                        }
                        .padding(.vertical, 8)

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
