//
//  TabBarController.swift
//  BrificLoodos
//
//  Created by Erkut Ter on 1.08.2023.
//

import UIKit

class TabBarController: UITabBarController {
    override func viewDidLoad() {
        let customTabBar = CustomTabBar()
        
        setValue(customTabBar, forKey: "tabBar")
        
        let homeVC = HomeViewController()
        homeVC.tabBarItem = UITabBarItem.init(title: "", image: UIImage(named: "home"), tag: 0)
        
        let socialVC = SocialViewController()
        socialVC.tabBarItem = UITabBarItem.init(title: "", image: UIImage(named: "social"), tag: 1)
        
        let mapVC = MapViewController()
        mapVC.tabBarItem = UITabBarItem.init(title: "", image: UIImage(named: "map"), tag: 2)
        
        let marketVC = MarketViewController()
        marketVC.tabBarItem = UITabBarItem.init(title: "", image: UIImage(named: "cart"), tag: 3)
        
        let profileVC = ProfileViiewController()
        profileVC.tabBarItem = UITabBarItem.init(title: "", image: UIImage(named: "user"), tag: 4)
        
        let controllers = [homeVC,socialVC,mapVC,marketVC,profileVC]
        
        self.viewControllers = controllers.map{
            UINavigationController(rootViewController: $0)
            
        }
//        tab bar properties
        tabBar.layer.cornerRadius = 20
        tabBar.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        tabBar.layer.shadowOpacity = 1
        tabBar.layer.shadowOffset = CGSize(width: 0, height: -4)
        tabBar.layer.shadowRadius = 40
        tabBar.tintColor = UIColor(red: 0.04, green: 0.24, blue: 1, alpha: 1)
        tabBar.unselectedItemTintColor = .black
        
    }
}
