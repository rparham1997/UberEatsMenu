//
//  ContentView.swift
//  SwiftUIUberEatsMenu
//
//  Created by Ramar Parham on 9/11/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectedOption: MenuBarOption = .japanese
    var body: some View {
        VStack {
            HStack(spacing: 16) {
                Button {
                    
                } label: {
                    Image(systemName: "arrow.left")
                        .font(.title2)
                }
                
                Text("Miami - South Beach")
                    .font(.title3)
                    .fontWeight(.semibold)
                
                Spacer()
                
                
                Button {
                    
                } label: {
                    Image(systemName: "magnifyingglass")
                        .font(.title2)
                }
                
            }
            .padding(.horizontal)
            .foregroundColor(.black)
            
            // menu options list
            
            MenuOptionsList(selectedOptions: $selectedOption)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
