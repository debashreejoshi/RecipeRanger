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
            
            recipes = recipeData.recipes
        } catch {
            print("Failed to decode recipesSample.json: \(error.localizedDescription)")
        }
    }
}
