//
//  AppDelegate.swift
//  Carona
//
//  Created by Julio Fernandes on 05/12/17.
//  Copyright © 2017 Carona. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var mainRouter: MainRouter?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        initWindow()
        initMainRouter()
        runApp()
        
        return true
    }

}

extension AppDelegate {
    
    /// Inicia a window
    func initWindow() {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
    }
    
    /// Inicia a rota base
    func initMainRouter() {
        mainRouter = MainRouter(window: window)
    }
    
    func runApp() {
        mainRouter?.run()
    }
}

