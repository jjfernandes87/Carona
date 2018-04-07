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
import AppCenter
import AppCenterAnalytics
import AppCenterCrashes

class LaunchApp: LaunchApplication {
    
    @objc func launchAndRelaunchSequence() {
        launchSequence.append("LaunchStage_bootGoogleAPI")
        launchSequence.append("LaunchStage_bootAppCenter")
    }
    
}

// MARK: - Google methods
extension LaunchApp {
    @objc func bootGoogleAPI() {
        if let value: String = ConfigurationProvider.shared().getBy(tag: "GMSServices.key") {
            GMSServices.provideAPIKey(value)
        }
        nextLaunchStage()
    }
    
    @objc func bootAppCenter() {
        if let value: String = ConfigurationProvider.shared().getBy(tag: "AppCenter.key") {
            MSAppCenter.start(value, withServices: [MSAnalytics.self, MSCrashes.self])
        }
        nextLaunchStage()
    }
}
