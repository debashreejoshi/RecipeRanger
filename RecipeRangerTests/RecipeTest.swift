//
//  RecipeTest.swift
//  RecipeRangerTests
//
//  Created by Debashree Joshi on 1/3/2023.
//

import XCTest
@testable import RecipeRanger

final class RecipeTest: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testWithValidJSON() {
        guard let url = Bundle.main.url(forResource: "recipesSample", withExtension: "json") else {
            XCTFail("Failed to load recipesSample.json")
            print("Failed to load recipesSample.json")
            return
        }
        
        do {
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase
            let recipeData = try decoder.decode(RecipeData.self, from: data)
            
            let recipes = recipeData.recipes
            XCTAssertEqual(recipes.count, 8)
            
            let recipe = recipes[1]
            XCTAssertEqual(recipe.dynamicTitle, Recipe.sample.dynamicTitle)
        } catch {
            XCTFail("Failed to decode recipesSample.json: \(error.localizedDescription)")
            print("Failed to decode recipesSample.json: \(error.localizedDescription)")
        }
    }

}
