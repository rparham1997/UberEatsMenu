//
//  MenuOptionsList.swift
//  SwiftUIUberEatsMenu
//
//  Created by Ramar Parham on 9/11/23.
//

import SwiftUI

struct MenuOptionsList: View {
    
    @Binding var selectedOptions: MenuBarOption
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 30) {
                ForEach(MenuBarOption.allCases, id: \.self) { item in
                    VStack {
                        Text(item.title)
                            .foregroundColor(item == selectedOptions ? .black : .gray)
                        
                        if selectedOptions == item {
                            Capsule()
                                .fill(.black)
                                .frame(height: 3)
                                .padding(.horizontal, -10)
                        } else {
                            Capsule()
                                .fill(.clear)
                                .frame(height: 3)
                                .padding(.horizontal, -10)
                        }
                    }
                    .onTapGesture {
                        self.selectedOptions = item
                    }
                }
            }
        }
    }
}

struct MenuOptionsList_Previews: PreviewProvider {
    static var previews: some View {
        MenuOptionsList(selectedOptions: .constant(.japanese))
    }
}
