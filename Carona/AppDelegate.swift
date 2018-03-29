//
//  AppDelegate.swift
//  Carona
//
//  Created by Julio Fernandes on 05/12/17.
//  Copyright © 2017 Carona. All rights reserved.
//

import UIKit
import LaunchApplication

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var mainRouter: MainRouter?
    var appSequence = LaunchApp()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        initWindow()
        initMainRouter()
        runApp()
        
        return true
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        appSequence.launchWithDelegate(delegate: self)
    }
}

// MARK: - LaunchApplicationProtocol methods
extension AppDelegate: LaunchApplicationProtocol {
    func didFinishLaunchSequence(application: LaunchApplication) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3) { self.mainRouter?.loadScreens() }
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

