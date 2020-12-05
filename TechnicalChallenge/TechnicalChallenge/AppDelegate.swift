//
//  AppDelegate.swift
//  TechnicalChallenge
//
//  Created by OnVirtualGym OVG on 28/11/2020.
//

import UIKit
import CoreData

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    let window = UIWindow()
    let locationService = LocationService()
    let storyboard = UIStoryboard(name: "Main", bundle: nil)


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        switch locationService.status {
        case .notDetermined, .denied, .restricted:
            let locationViewController = storyboard.instantiateViewController(withIdentifier: "locationViewController") as? LocationViewController
            locationViewController?.locationService = locationService
            window.rootViewController = locationViewController
        default:
            let defaultViewController = storyboard.instantiateViewController(withIdentifier: "mainViewController") 
//            defaultViewController?.locationService = locationService
            window.rootViewController = defaultViewController
        }
        window.makeKeyAndVisible()
        
        return true
    }
}

