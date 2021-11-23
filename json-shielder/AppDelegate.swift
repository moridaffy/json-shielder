//
//  AppDelegate.swift
//  json-shielder
//
//  Created by Maxim Skryabin on 23.11.2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?

  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    
    setupWindow()
    
    return true
  }
  
  private func setupWindow() {
    let window = UIWindow()
    window.makeKeyAndVisible()
    window.rootViewController = MainViewController()
    self.window = window
  }
}
