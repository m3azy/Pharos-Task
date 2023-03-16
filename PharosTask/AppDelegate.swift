//
//  AppDelegate.swift
//  PharosTask
//
//  Created by Mohamed Elmaazy on 16/03/2023.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        openApp()
        return true
    }

    fileprivate func openApp() {
        self.window = UIWindow(frame: UIScreen.main.bounds)
        let nav = UINavigationController(rootViewController: SplashRouter().open())
        nav.isNavigationBarHidden = true
        self.window!.rootViewController = nav
        window?.makeKeyAndVisible()
    }
}

