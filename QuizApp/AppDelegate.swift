//
//  AppDelegate.swift
//  QuizApp
//
//  Created by Marta Dulibić on 04.04.2021..
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window?.rootViewController = LoginViewController()
        return true
    }
    
}

