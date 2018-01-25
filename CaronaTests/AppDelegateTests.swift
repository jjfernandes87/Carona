//
//  AppDelegateTests.swift
//  CaronaTests
//
//  Created by Julio Fernandes on 25/01/18.
//  Copyright © 2018 Carona. All rights reserved.
//

import XCTest
@testable import Carona

class AppDelegateTests: XCTestCase {
    
    lazy var appdelegate = AppDelegate()
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    /// Testa metodo de inicar a window
    func testInitWindow() {
        XCTAssertNil(appdelegate.window, "appdelegate.window = nil")
        appdelegate.initWindow()
        XCTAssertNotNil(appdelegate.window, "appdelegate.window = instanciada")
    }
    
    /// Teste o metodo de iniciar a rota base
    func testInitRouter() {
        XCTAssertNil(appdelegate.mainRouter, "appdelegate.mainRouter = nil")
        appdelegate.initMainRouter()
        XCTAssertNotNil(appdelegate.mainRouter, "appdelegate.mainRouter = instanciada")
    }
}
