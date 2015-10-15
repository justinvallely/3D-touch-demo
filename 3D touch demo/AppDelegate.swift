//
//  AppDelegate.swift
//  3D touch demo
//
//  Created by Justin Vallely on 10/7/15.
//  Copyright © 2015 Justin Vallely. All rights reserved.
//

import UIKit
import Foundation

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }

    func application(application: UIApplication, performActionForShortcutItem shortcutItem: UIApplicationShortcutItem, completionHandler: (Bool) -> Void) {

        switch shortcutItem.type {
        case "com.inspirato.3D-touch-demo.jaunts":
            print("Shortcut item tapped: jaunt")
            // go to jaunt view controller

            launchViewController1("jauntViewController")


        case "com.inspirato.3D-touch-demo.newproperties":
            print("Shortcut item tapped: newproperties")
            // go to new properties view controller

            launchViewController1("npaViewController")

        case "com.inspirato.3D-touch-demo.newmessage":
            print("Shortcut item tapped: newmessage")
            // go to compose message view controller

            launchViewController1("emailViewController")

        default:
            print("default case")
        }
    }

    func launchViewController1(name: String) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let controller: UIViewController = storyboard.instantiateViewControllerWithIdentifier(name)
        self.window!.rootViewController = controller
        self.window!.makeKeyAndVisible()
    }


}

