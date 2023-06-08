//
//  RecipeDetailViewModelTests.swift
//  RecipeRangerTests
//
//  Created by Debashree Joshi on 8/6/2023.
//

import XCTest
@testable import RecipeRanger


final class RecipeDetailViewModelTests: XCTestCase {
    
    func testDynamicTitle() {
        let recipe = Recipe.sample
        let viewModel = RecipeDetailViewModel(recipe: recipe)
        
        XCTAssertEqual(viewModel.dynamicTitle, recipe.dynamicTitle, "Dynamic title should be equal to the recipe's dynamic title")
    }
    
    func testDynamicDescription() {
        let recipe = Recipe.sample
        let viewModel = RecipeDetailViewModel(recipe: recipe)
        
        XCTAssertEqual(viewModel.dynamicDescription, recipe.dynamicDescription, "Dynamic description should be equal to the recipe's dynamic description")
    }
    
    func testAmountNumber() {
        let recipe = Recipe.sample
        let viewModel = RecipeDetailViewModel(recipe: recipe)
        
        XCTAssertEqual(viewModel.amountNumber, recipe.recipeDetails.amountNumber, "Amount number should be equal to the recipe's amount number")
    }
    
    func testCookingTime() {
        let recipe = Recipe.sample
        let viewModel = RecipeDetailViewModel(recipe: recipe)
        
        XCTAssertEqual(viewModel.cookingTime, recipe.recipeDetails.cookingTime, "Cooking time should be equal to the recipe's cooking time")
    }
    
    func testIngredients() {
        let recipe = Recipe.sample
        let viewModel = RecipeDetailViewModel(recipe: recipe)
        
        XCTAssertEqual(viewModel.ingredients, recipe.ingredients, "Ingredients should be equal to the recipe's ingredients")
    }
    
    func testImageURL() {
        let recipe = Recipe.sample
        let viewModel = RecipeDetailViewModel(recipe: recipe)
        
        XCTAssertEqual(viewModel.image, URL(string: recipe.thumbnailURLString ?? ""), "Image URL should be equal to the recipe's thumbnail URL")
    }
}
