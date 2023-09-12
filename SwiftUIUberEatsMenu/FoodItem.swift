//
//  FoodItem.swift
//  SwiftUIUberEatsMenu
//
//  Created by Ramar Parham on 9/11/23.
//

import Foundation

struct FoodItem: Identifiable {
    var id = UUID().uuidString
    var title: String
    var description: String
    let price: String
    let imageName: String
}

var japaneseFood: [FoodItem] = [
    .init(title: "Sushi", description: "Amazing sushi imported from Japan. Spicy tuna topped with avocado and mango", price: "$24", imageName: "japan-tapas"),
    .init(title: "Raman Noodles", description: "You're not in college anymore, time to upgrade your Ramen Noodles", price: "$14", imageName: "japanese-ramen"),
    .init(title: "Poke Bowl", description: "Want your sushi in a bowl? Check this out.", price: "$30", imageName: "japanese-sushi"),

]

var americanFood: [FoodItem] = [
    .init(title: "Sushi", description: "Amazing sushi imported from Japan. Spicy tuna topped with avocado and mango", price: "$24", imageName: "japan-tapas"),
    .init(title: "Raman Noodles", description: "You're not in college anymore, time to upgrade your Ramen Noodles", price: "$14", imageName: "japanese-ramen"),
    .init(title: "Poke Bowl", description: "Want your sushi in a bowl? Check this out.", price: "$30", imageName: "japanese-pokebowl"),

]

var italianFood: [FoodItem] = [
    .init(title: "Sushi", description: "Amazing sushi imported from Japan. Spicy tuna topped with avocado and mango", price: "$24", imageName: "japan-tapas"),
    .init(title: "Raman Noodles", description: "You're not in college anymore, time to upgrade your Ramen Noodles", price: "$14", imageName: "japanese-ramen"),
    .init(title: "Poke Bowl", description: "Want your sushi in a bowl? Check this out.", price: "$30", imageName: "japanese-pokebowl"),

]
