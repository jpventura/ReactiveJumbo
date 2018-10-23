//
//  AppDelegate.swift
//  MVVM-Rx
//
//  Created by Fabijan Bajo on 22/10/2018.
//  Copyright © 2018 Fabijan Bajo. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        let navigationController = UINavigationController()
        let navigator = Navigator(navigationController: navigationController)
        navigationController.setViewControllers([CatalogViewController(viewModel: CatalogViewModel(navigator: navigator))], animated: false)

        window?.rootViewController = navigationController

        window?.makeKeyAndVisible()

        return true
    }
}
