//
//  MainRouter.swift
//  Carona
//
//  Created by Julio Fernandes on 25/01/18.
//  Copyright © 2018 Carona. All rights reserved.
//

import UIKit
import UIColor_Hex_Swift
import ConfigurationProvider

let mainStoryBoard = UIStoryboard(name: "Main", bundle: nil)

class MainRouter: UITabBarController {

    var window: UIWindow?
    
    convenience init(window: UIWindow?) {
        self.init()
        self.window = window
        setStyle()
    }
    
    /// Definimos o estilo da Tabbar
    private func setStyle() {
        if let value: String = ConfigurationProvider.shared().getBy(tag: "Styles.tabBarTintColor") {
            self.tabBar.tintColor = UIColor(value)
        }
    }
    
    /// Roda o inicio do app
    func run() {
        let controller = mainStoryBoard.instantiateViewController(withIdentifier: "EmptyViewController") as! EmptyViewController
        viewControllers = [UINavigationController(rootViewController: controller)]
        if let window = window {
            window.rootViewController = self
        }
    }
    
    /// Carrega as telas do app
    func loadScreens() {
        let controller = mainStoryBoard.instantiateViewController(withIdentifier: "MapsViewController") as! MapsViewController
        controller.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 0)
        viewControllers = [UINavigationController(rootViewController: controller)]
    }

}
