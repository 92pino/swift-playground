//
//  AppDelegate.swift
//  MyApp
//
//  Created by JinBae Jeong on 09/05/2019.
//  Copyright © 2019 pino. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?


  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    // Override point for customization after application launch.
    return true
  }
  
  func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
    print("sourceApplication :", options[.sourceApplication] ?? "")
    print("app :", app)
    print("url :", url)
    
    if let scheme = url.scheme {
      print("scheme :", scheme)
    }
    if let host = url.host {
      print("host :", host)
    }
    if let query = url.query {
      print("query :", query)
    }
    return true
  }
  
}

