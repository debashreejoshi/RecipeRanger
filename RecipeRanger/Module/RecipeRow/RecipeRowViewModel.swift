//
//  RecipeRowViewModel.swift
//  RecipeRanger
//
//  Created by Debashree Joshi on 1/3/2023.
//

import Foundation
import SwiftUI

class RecipeRowViewModel: ObservableObject {
    
    let recipe: Recipe
    
    init(recipe: Recipe) {
        self.recipe = recipe
    }
    
    var dynamicTitle: String {
        recipe.dynamicTitle
    }
    
    var dynamicDescription: String {
        recipe.dynamicDescription
    }
    
    var amountNumber: Int {
        recipe.recipeDetails.amountNumber
    }
    
    var cookingTime: String {
        recipe.recipeDetails.cookingTime
    }
    
    var image: URL? {
        if let thumbnailURLString = recipe.thumbnailURLString {
            return URL(string: thumbnailURLString)
        } else {
            return nil
        }
    }
}
