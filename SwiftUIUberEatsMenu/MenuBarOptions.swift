//
//  MenuBarOptions.swift
//  SwiftUIUberEatsMenu
//
//  Created by Ramar Parham on 9/11/23.
//

import Foundation

enum MenuBarOption: Int, CaseIterable {
    case japanese, american, italian, promotions, fancy
    
    var title: String {
        switch self {
        case .japanese: return "Japanese"
        case .american: return "American"
        case .italian: return "Italian"
        case .promotions: return "Promotions"
        case .fancy: return "Fancy"
            
        }
    }
    
    var foodItems: [FoodItem] {
        switch self {
        case .japanese:
            return japaneseFood
        case .american:
            return americanFood
        case .italian:
            return italianFood
        case .promotions:
            return japaneseFood + italianFood
        case .fancy:
            return italianFood
        }
    }
}
