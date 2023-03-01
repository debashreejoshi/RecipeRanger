//
//  RecipesViewModel.swift
//  RecipeRanger
//
//  Created by Debashree Joshi on 27/2/2023.
//

import Foundation

class RecipesViewModel: ObservableObject {
    
    @Published var recipes: [Recipe] = []
   
    func loadRecipes() {
        guard let url = Bundle.main.url(forResource: "recipesSample", withExtension: "json") else {
            print("Failed to load recipesSample.json")
            return
        }
        
        do {
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase
            let recipeData = try decoder.decode(RecipeData.self, from: data)
            
            // Adds default id values to recipes and ingredients
            let recipesWithIds = recipeData.recipes.enumerated().map { (index, recipe) -> Recipe in
                var recipeWithId = recipe
                recipeWithId.id = index
                recipeWithId.ingredients = recipe.ingredients.enumerated().map { (index, ingredient) -> Ingredient in
                    var ingredientWithId = ingredient
                    ingredientWithId.id = index
                    return ingredientWithId
                }
                return recipeWithId
            }
            
            recipes = recipesWithIds
        } catch {
            print("Failed to decode recipesSample.json: \(error.localizedDescription)")
        }
    }
}
