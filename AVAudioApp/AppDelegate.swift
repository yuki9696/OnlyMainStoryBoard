//
//  AppDelegate.swift
//  AVAudioApp
//
//  Created by yuki yamamoto on H29/01/08.
//  Copyright © 平成29年 yuki yamamoto. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey : Any]? = nil) -> Bool {

        //Navigation Background color in appdelegate
        
        UINavigationBar.appearance().barTintColor = UIColor.init(red: (138.0/255.0), green: (176.0/255.0), blue: (57.0/255.0), alpha: (1.0/255.0))
        
        //Navigation Bar color in appdelegate
        
        UINavigationBar.appearance().tintColor = UIColor.white
        
        //Navigation Bar title text color in appdelegate
        
        UINavigationBar.appearance().titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]
        
        //Status Bar light content in appdelegate
        
        UIApplication.shared.statusBarStyle = .lightContent
        
        return true
    }
    
    
    func applicationWillResignActive(_ application: UIApplication) {
           }

    func applicationDidEnterBackground(_ application: UIApplication) {
        
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
          }

    func applicationDidBecomeActive(_ application: UIApplication) {
           }

    func applicationWillTerminate(_ application: UIApplication) {
         }
    
    


}

