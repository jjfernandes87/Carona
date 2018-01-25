//
//  LaunchApp.swift
//  Carona
//
//  Created by Julio Fernandes on 25/01/18.
//  Copyright © 2018 Carona. All rights reserved.
//

import UIKit
import LaunchApplication
import ConfigurationProvider
import GoogleMaps

class LaunchApp: LaunchApplication {
    
    @objc func launchAndRelaunchSequence() {
        launchSequence.append("LaunchStage_bootGoogleAPI")
    }
    
}

// MARK: - Google methods
extension LaunchApp {
    @objc func bootGoogleAPI() {
        if let value: String = ConfigurationProvider.shared().getBy(tag: "GMSServices.key") { GMSServices.provideAPIKey(value) }
        nextLaunchStage()
    }
}
