//
//  MenuItemSection.swift
//  SwiftUIUberEatsMenu
//
//  Created by Ramar Parham on 9/11/23.
//

import SwiftUI

struct MenuItemSection: View {
    
    let option: MenuBarOption
    
    var body: some View {
        VStack(alignment: .leading, spacing: 24) {
            Text("Japanese")
                .font(.title.bold())
                .padding(.vertical)
            
            ForEach(option.foodItems) { FoodItem in
                HStack(spacing: 16) {
                    VStack(alignment: .leading, spacing: 8) {
                        Text(FoodItem.title)
                            .font(.title3.bold())
                        
                        Text(FoodItem.description)
                            .font(.caption)
                            .foregroundColor(.gray)
                        
                        Text("Price: \(FoodItem.price)")
                            .font(.system(size: 14))
                            .fontWeight(.bold)
                    }
                    
                    Spacer()
                    
                    Image(FoodItem.imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 96, height: 88)
                        .clipped()
                        .cornerRadius(10)
                }
                .padding(.horizontal)
            }
        }
    }
}

struct MenuItemSection_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemSection(option: .japanese)
    }
}
