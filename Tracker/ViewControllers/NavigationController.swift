//
//  NavigationController.swift
//  Tracker
//
//  Created by Aleksandr Shapovalov on 28/03/23.
//

import UIKit

class NavigationController: UITabBarController {

    let habitsItemName: String = "Habits"
    let infoItemName: String = "Info"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBar()
        self.tabBar.isTranslucent = false
        self.tabBar.backgroundColor = .systemGray5
        self.tabBar.tintColor = .purple

    }

    func setupTabBar() {
        let habitsViewController = createNavigationController(viewController: HabitsViewController(), itemName: habitsItemName, itemImage: "rectangle.grid.1x2.fill")
        let infoViewController = createNavigationController(viewController: InfoViewController(), itemName: infoItemName, itemImage: "info.circle.fill")

        viewControllers = [habitsViewController, infoViewController]
    }

    func createNavigationController(viewController: UIViewController, itemName: String, itemImage: String) ->
    UINavigationController {
        let item = UITabBarItem(title: itemName, image: UIImage(systemName: itemImage), tag: 0)

        let navigationController = UINavigationController(rootViewController: viewController)
        navigationController.tabBarItem = item
        return navigationController
    }
}
