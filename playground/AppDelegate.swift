//
//  AppDelegate.swift
//  playground
//
//  Created by su on 2019/12/11.
//  Copyright © 2019 su. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    let window: UIWindow! = UIWindow()
    let router = MainCoordinator().strongRouter

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        router.setRoot(for: window)
        return true
    }

}

