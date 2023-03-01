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
        XCTAssertTrue(app.navigationBars["Recipes"].exists)
        XCTAssertTrue(app.tables["RecipeListView"].exists)
        XCTAssertEqual(app.tables["RecipeListView"].cells.count, 3)
        
        
        let cell = app.tables["RecipeListView"].cells.element(boundBy: 0)
        XCTAssertTrue(cell.staticTexts["recipeTitle"].exists)
        XCTAssertTrue(cell.staticTexts["recipeDescription"].exists)
        XCTAssertTrue(cell.images["recipeThumbnail"].exists)
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
