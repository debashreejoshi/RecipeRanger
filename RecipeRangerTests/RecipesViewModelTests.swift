//
//  RecipesViewModelTests.swift
//  RecipeRangerTests
//
//  Created by Debashree Joshi on 1/3/2023.
//

import XCTest
@testable import RecipeRanger

final class RecipesViewModelTests: XCTestCase {
    
    func testLoadRecipes() {
        let viewModel = RecipesViewModel()
        viewModel.loadRecipes()
        XCTAssertEqual(viewModel.recipes.count, 8, "Expected the number of recipes to be 8")
    }
    
    
    func testLoadRecipes_MockData() {
        
        let viewModel = RecipesViewModel()
        
        // Load recipes with a custom set of mock data
        let recipe1 = Recipe.sample
        let recipe2 = Recipe.sample
        let recipe3 = Recipe.sample
        viewModel.recipes = [recipe1, recipe2, recipe3]
        
        // Then
        XCTAssertEqual(viewModel.recipes.count, 3, "Expected the number of recipes to be 3")
        XCTAssertEqual(viewModel.recipes[0].dynamicTitle, "Pork, fennel and sage ragu with polenta", "Expected the title of the first recipe to be 'Pork, fennel and sage ragu with polenta'")
        XCTAssertEqual(viewModel.recipes[1].dynamicDescription, "Put your slow cooker to work and make this mouth-watering pork ragu. Served with fluffy polenta, it’s a guaranteed crowd-pleaser. ", "Expected the description of the second recipe to be 'Put your slow cooker to work and make this mouth-watering pork ragu. Served with fluffy polenta, it’s a guaranteed crowd-pleaser. '")
        XCTAssertEqual(viewModel.recipes[2].recipeDetails.amountNumber, 8, "Expected the number of ingredients in the third recipe to be 8")
    }
    
}

