//
//  MainTabBarViewController.swift
//  PathFinderCharacters
//
//  Created by Maksim Grischenko on 12.01.2023.
//

import UIKit

class MainTabBarViewController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        viewControllers = [generateViewController(viewController: WeaponsViewController(), image: UIImage(named: "axes")!, title: "Оружие"), generateViewController(viewController: ArmorsViewController(), image: UIImage(named: "armor")!, title: "Броня"), generateViewController(viewController: EquipmentViewController(), image: UIImage(named: "bag")!, title: "Снаряжение")]
        // Do any additional setup after loading the view.
    }
    

    private func generateViewController(
        viewController: UIViewController,
        image: UIImage,
        title: String) -> UIViewController {
            let navigationVC = UINavigationController(rootViewController: viewController)
            navigationVC.tabBarItem.image = image
            navigationVC.tabBarItem.title = title
            viewController.navigationItem.title = title
            navigationVC.navigationBar.prefersLargeTitles = true
            navigationVC.navigationBar.largeTitleTextAttributes = [NSAttributedString.Key.font: UIFont(name: "AppleSDGothicNeo-Bold", size: 40)!]
            return navigationVC
    }

}
