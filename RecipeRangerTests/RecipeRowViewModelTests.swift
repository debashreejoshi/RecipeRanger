//
//  RecipeRowViewModelTests.swift
//  RecipeRangerTests
//
//  Created by Debashree Joshi on 8/6/2023.
//

import XCTest
@testable import RecipeRanger

final class RecipeRowViewModelTests: XCTestCase {
    
    func testDynamicTitle() {
        let recipe = Recipe.sample
        let viewModel = RecipeRowViewModel(recipe: recipe)
        
        XCTAssertEqual(viewModel.dynamicTitle, recipe.dynamicTitle)
    }
    
    func testDynamicDescription() {
        let recipe = Recipe.sample
        let viewModel = RecipeRowViewModel(recipe: recipe)
        
        XCTAssertEqual(viewModel.dynamicDescription, recipe.dynamicDescription)
    }
    
    func testAmountNumber() {
        let recipe = Recipe.sample
        let viewModel = RecipeRowViewModel(recipe: recipe)
        
        XCTAssertEqual(viewModel.amountNumber, recipe.recipeDetails.amountNumber)
    }
    
    func testCookingTime() {
        let recipe = Recipe.sample
        let viewModel = RecipeRowViewModel(recipe: recipe)
        
        XCTAssertEqual(viewModel.cookingTime, recipe.recipeDetails.cookingTime)
    }
    
    func testImageURL() {
        let recipe = Recipe.sample
        let viewModel = RecipeRowViewModel(recipe: recipe)
        
        XCTAssertEqual(viewModel.image, URL(string: "https://coles.com.au\(recipe.dynamicThumbnail)"))
    }
    
}
