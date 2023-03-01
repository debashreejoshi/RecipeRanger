//
//  RecipeRangerUITestsLaunchTests.swift
//  RecipeRangerUITests
//
//  Created by Debashree Joshi on 27/2/2023.
//

import XCTest

final class RecipeRangerUITestsLaunchTests: XCTestCase {
    
    let app = XCUIApplication()
    
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        app.launch()
    }
    
    func testRecipeListView() {
        
        // Wait for the RecipesView to appear
        XCTAssertTrue(app.staticTexts["Recipe Ranger"].waitForExistence(timeout: 5))
        
        // Check Recipes List
        XCTAssertTrue(app.navigationBars["Recipes"].exists)
        XCTAssertTrue(app.collectionViews["RecipeList"].exists)
        
        // Tap on a Recipe
        app.collectionViews["RecipeList"].otherElements["Pork, fennel and sage ragu with polenta"].tap()
        
        // Check Recipe Detail
        XCTAssertTrue(app.navigationBars["Recipe detail"].exists)
        XCTAssertTrue(app.staticTexts["ReceipeDetailsDynamicTitle"].exists)
        
        // Tap Back
        app.navigationBars["Recipe detail"].buttons["Recipes"].tap()
        
        // Check Recipes List
        XCTAssertTrue(app.navigationBars["Recipes"].exists)
        XCTAssertTrue(app.collectionViews["RecipeList"].exists)
    }
    
    
    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }
    
    override func setUpWithError() throws {
        continueAfterFailure = false
    }
    
    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()
        
        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app
        
        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
