//
//  TabBarViewController.swift
//  Quizzes
//
//  Created by Pritesh Nadiadhara on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let firstViewController = QuizViewController()
        let secondViewcontroller = SearchViewController()
        let thirdViewController = CreateViewController()
        let fourthViewController = ProfileViewController()
        
        firstViewController.tabBarItem = UITabBarItem(title: "Quizzes", image: UIImage(named: "questions-filled"), tag: 0)
        secondViewcontroller.tabBarItem = UITabBarItem(title: "Search", image: UIImage(named: "search-icon"), tag: 1)
        thirdViewController.tabBarItem = UITabBarItem(title: "Create", image: UIImage(named: "plus-filled"), tag: 2)
        fourthViewController.tabBarItem = UITabBarItem(title: "Profile", image: UIImage(named: "profile-unfilled"), tag: 3)
        
        let tabBarList = [UINavigationController(rootViewController: firstViewController),UINavigationController(rootViewController: secondViewcontroller),UINavigationController(rootViewController: thirdViewController),UINavigationController(rootViewController: fourthViewController)]
        
        viewControllers = tabBarList
        
        
    }
    
    
    
    
}
