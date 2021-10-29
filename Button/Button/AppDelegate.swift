//
//  AppDelegate.swift
//  Button
//
//  Created by HYEJI on 2021/10/28.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
//        if #available(iOS 15, *) {
//           let tabBarAppearance = UITabBarAppearance()
//            tabBarAppearance.backgroundColor = UIColor.white
//            tabBarAppearance.stackedLayoutAppearance.selected.titleTextAttributes = [.foregroundColor: UIColor(red: 238/255.0, green: 109/255.0, blue: 78/255.0, alpha: 1.0)]
//            tabBarAppearance.stackedLayoutAppearance.normal.titleTextAttributes = [.foregroundColor: UIColor.black]
//            UITabBar.appearance().standardAppearance = tabBarAppearance
//            UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
//        } else {
//            UITabBarItem.appearance().setTitleTextAttributes([.foregroundColor: UIColor(red: 238/255.0, green: 109/255.0, blue: 78/255.0, alpha: 1.0)], for: .selected)
//            UITabBarItem.appearance().setTitleTextAttributes([.foregroundColor: UIColor.black], for: .normal)
//            UITabBar.appearance().tintColor =  UIColor(red: 238/255.0, green: 109/255.0, blue: 78/255.0, alpha: 1.0)
//            UITabBar.appearance().unselectedItemTintColor = UIColor.black
//            UITabBar.appearance().barTintColor = UIColor.white
//         }
//
//        UITabBar.appearance().tintColor =  UIColor(red: 238/255.0, green: 109/255.0, blue: 78/255.0, alpha: 1.0)
        
        UITabBarItem.appearance().setTitleTextAttributes([.foregroundColor: UIColor(red: 238/255.0, green: 109/255.0, blue: 78/255.0, alpha: 1.0)], for: .selected)
        UITabBarItem.appearance().setTitleTextAttributes([.foregroundColor: UIColor.black], for: .normal)
        UITabBar.appearance().tintColor =  UIColor(red: 238/255.0, green: 109/255.0, blue: 78/255.0, alpha: 1.0)
        UITabBar.appearance().unselectedItemTintColor = UIColor.black
        UITabBar.appearance().barTintColor = UIColor.white

        return true
    }

    
    
    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }

    

}

