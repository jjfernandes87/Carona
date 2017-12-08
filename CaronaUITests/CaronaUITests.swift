//
//  CaronaUITests.swift
//  CaronaUITests
//
//  Created by Julio Fernandes on 05/12/17.
//  Copyright © 2017 Carona. All rights reserved.
//

import XCTest

class CaronaUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        let app = XCUIApplication()
        setupSnapshot(app)
        app.launch()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testExample() {
        snapshot("0HomeScreen")
    }
    
}
