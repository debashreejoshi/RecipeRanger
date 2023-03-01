//
//  Recipe.swift
//  RecipeRanger
//
//  Created by Debashree Joshi on 27/2/2023.
//

import Foundation

struct RecipeData: Codable {
    var recipes: [Recipe]
}

struct Recipe: Codable, Identifiable {
    
    let id: UUID = UUID()
    let dynamicTitle: String
    let dynamicDescription: String
    let dynamicThumbnail: String
    let dynamicThumbnailAlt: String
    let recipeDetails: RecipeDetails
    var ingredients: [Ingredient]
    
    var thumbnailURLString: String? {
        return "https://coles.com.au\(dynamicThumbnail)"
    }
    
    static var sample: Recipe {
        let recipeDetails = RecipeDetails(amountLabel: "Serves", amountNumber: 8, prepLabel: "Prep", prepTime: "15m", prepNote: "+ cooling time", cookingLabel: "Cooking", cookingTime: "15m", cookTimeAsMinutes: 15, prepTimeAsMinutes: 15)
        let ingredient1 = Ingredient(ingredient: "1.2kg Coles Australian Pork Slow Cook Scotch Roast, cut into 10cm pieces")
        let ingredient2 = Ingredient( ingredient: "1 tsp ground fennel or fennel seeds")
        let ingredient3 = Ingredient( ingredient: "6 pancetta slices, thinly sliced")
        return Recipe(dynamicTitle: "Pork, fennel and sage ragu with polenta", dynamicDescription: "Put your slow cooker to work and make this mouth-watering pork ragu. Served with fluffy polenta, it’s a guaranteed crowd-pleaser. ", dynamicThumbnail: "Pork-ragu", dynamicThumbnailAlt: "Pork ragu served on top of polenta with fennel and fried sage on top with bread on the side", recipeDetails: recipeDetails, ingredients: [ingredient1, ingredient2, ingredient3])
    }
}

struct RecipeDetails: Codable {
    
    let amountLabel: String
    let amountNumber: Int
    let prepLabel: String
    let prepTime: String
    let prepNote: String?
    let cookingLabel: String
    let cookingTime: String
    let cookTimeAsMinutes: Int
    let prepTimeAsMinutes: Int
}

struct Ingredient: Codable, Identifiable {
    let id: UUID = UUID()
    let ingredient: String
}
